; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smack_lsm.c_smack_socket_getpeersec_dgram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smack_lsm.c_smack_socket_getpeersec_dgram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.netlbl_lsm_secattr = type { i32 }

@SMK_LABELLEN = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sk_buff*, i64*)* @smack_socket_getpeersec_dgram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smack_socket_getpeersec_dgram(%struct.socket* %0, %struct.sk_buff* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.netlbl_lsm_secattr, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i64* %2, i64** %7, align 8
  %16 = load i32, i32* @SMK_LABELLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i32, i32* @PF_INET, align 4
  store i32 %20, i32* %12, align 4
  %21 = load %struct.socket*, %struct.socket** %5, align 8
  %22 = icmp ne %struct.socket* %21, null
  br i1 %22, label %23, label %43

23:                                               ; preds = %3
  %24 = load %struct.socket*, %struct.socket** %5, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 0
  %26 = load %struct.sock*, %struct.sock** %25, align 8
  store %struct.sock* %26, %struct.sock** %9, align 8
  %27 = load %struct.sock*, %struct.sock** %9, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PF_INET, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %23
  %33 = load %struct.sock*, %struct.sock** %9, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PF_INET6, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %68

39:                                               ; preds = %32, %23
  %40 = load %struct.sock*, %struct.sock** %9, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %39, %3
  %44 = call i32 @netlbl_secattr_init(%struct.netlbl_lsm_secattr* %8)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @netlbl_skbuff_getattr(%struct.sk_buff* %45, i32 %46, %struct.netlbl_lsm_secattr* %8)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = call i32 @smack_from_secattr(%struct.netlbl_lsm_secattr* %8, i8* %19)
  br label %52

52:                                               ; preds = %50, %43
  %53 = call i32 @netlbl_secattr_destroy(%struct.netlbl_lsm_secattr* %8)
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %68

58:                                               ; preds = %52
  %59 = call i64 @smack_to_secid(i8* %19)
  store i64 %59, i64* %13, align 8
  %60 = load i64, i64* %13, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %68

65:                                               ; preds = %58
  %66 = load i64, i64* %13, align 8
  %67 = load i64*, i64** %7, align 8
  store i64 %66, i64* %67, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %68

68:                                               ; preds = %65, %62, %56, %38
  %69 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %69)
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @netlbl_secattr_init(%struct.netlbl_lsm_secattr*) #2

declare dso_local i32 @netlbl_skbuff_getattr(%struct.sk_buff*, i32, %struct.netlbl_lsm_secattr*) #2

declare dso_local i32 @smack_from_secattr(%struct.netlbl_lsm_secattr*, i8*) #2

declare dso_local i32 @netlbl_secattr_destroy(%struct.netlbl_lsm_secattr*) #2

declare dso_local i64 @smack_to_secid(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
