; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smack_lsm.c_smack_to_secattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smack_lsm.c_smack_to_secattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlbl_lsm_secattr = type { i8*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.smack_cipso = type { i8*, i32 }

@NETLBL_SECATTR_DOMAIN = common dso_local global i32 0, align 4
@NETLBL_SECATTR_MLS_LVL = common dso_local global i32 0, align 4
@smack_cipso_direct = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.netlbl_lsm_secattr*)* @smack_to_secattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smack_to_secattr(i8* %0, %struct.netlbl_lsm_secattr* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.netlbl_lsm_secattr*, align 8
  %5 = alloca %struct.smack_cipso, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.netlbl_lsm_secattr* %1, %struct.netlbl_lsm_secattr** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %4, align 8
  %9 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %8, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = load i32, i32* @NETLBL_SECATTR_DOMAIN, align 4
  %11 = load i32, i32* @NETLBL_SECATTR_MLS_LVL, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %4, align 8
  %14 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @smack_to_cipso(i8* %15, %struct.smack_cipso* %5)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.smack_cipso, %struct.smack_cipso* %5, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %4, align 8
  %23 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  %26 = getelementptr inbounds %struct.smack_cipso, %struct.smack_cipso* %5, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %4, align 8
  %29 = call i32 @smack_set_catset(i8* %27, %struct.netlbl_lsm_secattr* %28)
  br label %39

30:                                               ; preds = %2
  %31 = load i32, i32* @smack_cipso_direct, align 4
  %32 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %4, align 8
  %33 = getelementptr inbounds %struct.netlbl_lsm_secattr, %struct.netlbl_lsm_secattr* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  %36 = load i8*, i8** %3, align 8
  %37 = load %struct.netlbl_lsm_secattr*, %struct.netlbl_lsm_secattr** %4, align 8
  %38 = call i32 @smack_set_catset(i8* %36, %struct.netlbl_lsm_secattr* %37)
  br label %39

39:                                               ; preds = %30, %19
  ret void
}

declare dso_local i32 @smack_to_cipso(i8*, %struct.smack_cipso*) #1

declare dso_local i32 @smack_set_catset(i8*, %struct.netlbl_lsm_secattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
