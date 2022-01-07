; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smack_lsm.c_smack_from_secattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smack_lsm.c_smack_from_secattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlbl_lsm_secattr = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@SMK_LABELLEN = common dso_local global i32 0, align 4
@NETLBL_SECATTR_MLS_LVL = common dso_local global i32 0, align 4
@NETLBL_SECATTR_MLS_CAT = common dso_local global i32 0, align 4
@smack_cipso_direct = common dso_local global i64 0, align 8
@SMK_MAXLEN = common dso_local global i32 0, align 4
@NETLBL_SECATTR_SECID = common dso_local global i32 0, align 4
@smack_net_ambient = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netlbl_lsm_secattr*, i8*)* @smack_from_secattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smack_from_secattr(%struct.netlbl_lsm_secattr* %0, i8* %1) #0 {
  %3 = alloca %struct.netlbl_lsm_secattr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.netlbl_lsm_secattr* %0, %struct.netlbl_lsm_secattr** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* @SMK_LABELLEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %3, align 8
  %15 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @NETLBL_SECATTR_MLS_LVL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %66

20:                                               ; preds = %2
  %21 = load i32, i32* @SMK_LABELLEN, align 4
  %22 = call i32 @memset(i8* %13, i8 signext 0, i32 %21)
  %23 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %3, align 8
  %24 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @NETLBL_SECATTR_MLS_CAT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %20
  store i32 -1, i32* %8, align 4
  br label %30

30:                                               ; preds = %42, %29
  %31 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %3, align 8
  %32 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  %38 = call i32 @netlbl_secattr_catmap_walk(i32 %35, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %45

42:                                               ; preds = %30
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @smack_catset_bit(i32 %43, i8* %13)
  br label %30

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45, %20
  %47 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %3, align 8
  %48 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @smack_cipso_direct, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load i8*, i8** %4, align 8
  %56 = load i32, i32* @SMK_MAXLEN, align 4
  %57 = call i32 @memcpy(i8* %55, i8* %13, i32 %56)
  store i32 1, i32* %9, align 4
  br label %92

58:                                               ; preds = %46
  %59 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %3, align 8
  %60 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @smack_from_cipso(i64 %63, i8* %13, i8* %64)
  store i32 1, i32* %9, align 4
  br label %92

66:                                               ; preds = %2
  %67 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %3, align 8
  %68 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @NETLBL_SECATTR_SECID, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %66
  %74 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %3, align 8
  %75 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i8* @smack_from_secid(i32 %77)
  store i8* %78, i8** %7, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = icmp eq i8* %79, null
  %81 = zext i1 %80 to i32
  %82 = call i32 @BUG_ON(i32 %81)
  %83 = load i8*, i8** %4, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = load i32, i32* @SMK_MAXLEN, align 4
  %86 = call i32 @strncpy(i8* %83, i8* %84, i32 %85)
  store i32 1, i32* %9, align 4
  br label %92

87:                                               ; preds = %66
  %88 = load i8*, i8** %4, align 8
  %89 = load i8*, i8** @smack_net_ambient, align 8
  %90 = load i32, i32* @SMK_MAXLEN, align 4
  %91 = call i32 @strncpy(i8* %88, i8* %89, i32 %90)
  store i32 1, i32* %9, align 4
  br label %92

92:                                               ; preds = %87, %73, %58, %54
  %93 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %93)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i32 @netlbl_secattr_catmap_walk(i32, i32) #2

declare dso_local i32 @smack_catset_bit(i32, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @smack_from_cipso(i64, i8*, i8*) #2

declare dso_local i8* @smack_from_secid(i32) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
