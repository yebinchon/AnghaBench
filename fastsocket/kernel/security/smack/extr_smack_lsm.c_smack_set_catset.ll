; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smack_lsm.c_smack_set_catset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smack_lsm.c_smack_set_catset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlbl_lsm_secattr = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@NETLBL_SECATTR_MLS_CAT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SMK_LABELLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.netlbl_lsm_secattr*)* @smack_set_catset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smack_set_catset(i8* %0, %struct.netlbl_lsm_secattr* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.netlbl_lsm_secattr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.netlbl_lsm_secattr* %1, %struct.netlbl_lsm_secattr** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %72

13:                                               ; preds = %2
  %14 = load i32, i32* @NETLBL_SECATTR_MLS_CAT, align 4
  %15 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %4, align 8
  %16 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.TYPE_7__* @netlbl_secattr_catmap_alloc(i32 %19)
  %21 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %4, align 8
  %22 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %24, align 8
  %25 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %4, align 8
  %26 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  store i32 1, i32* %7, align 4
  %31 = load i8*, i8** %3, align 8
  store i8* %31, i8** %5, align 8
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %67, %13
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @SMK_LABELLEN, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %72

36:                                               ; preds = %32
  store i8 -128, i8* %6, align 1
  br label %37

37:                                               ; preds = %59, %36
  %38 = load i8, i8* %6, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %37
  %42 = load i8, i8* %6, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8*, i8** %5, align 8
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %43, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %59

50:                                               ; preds = %41
  %51 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %4, align 8
  %52 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @GFP_ATOMIC, align 4
  %58 = call i32 @netlbl_secattr_catmap_setbit(%struct.TYPE_7__* %55, i32 %56, i32 %57)
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %50, %49
  %60 = load i8, i8* %6, align 1
  %61 = zext i8 %60 to i32
  %62 = ashr i32 %61, 1
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %6, align 1
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %37

66:                                               ; preds = %37
  br label %67

67:                                               ; preds = %66
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %5, align 8
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %32

72:                                               ; preds = %12, %32
  ret void
}

declare dso_local %struct.TYPE_7__* @netlbl_secattr_catmap_alloc(i32) #1

declare dso_local i32 @netlbl_secattr_catmap_setbit(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
