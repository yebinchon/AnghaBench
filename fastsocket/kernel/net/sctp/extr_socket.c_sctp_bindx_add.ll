; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_bindx_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_bindx_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sctp_af = type { i32 }
%union.sctp_addr = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"sctp_bindx_add (sk: %p, addrs: %p, addrcnt: %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sockaddr*, i32)* @sctp_bindx_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_bindx_add(%struct.sock* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca %struct.sctp_af*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @SCTP_DEBUG_PRINTK(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.sock* %13, %struct.sockaddr* %14, i32 %15)
  %17 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %18 = bitcast %struct.sockaddr* %17 to i8*
  store i8* %18, i8** %10, align 8
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %63, %3
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %66

23:                                               ; preds = %19
  %24 = load i8*, i8** %10, align 8
  %25 = bitcast i8* %24 to %struct.sockaddr*
  store %struct.sockaddr* %25, %struct.sockaddr** %11, align 8
  %26 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %27 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.sctp_af* @sctp_get_af_specific(i32 %28)
  store %struct.sctp_af* %29, %struct.sctp_af** %12, align 8
  %30 = load %struct.sctp_af*, %struct.sctp_af** %12, align 8
  %31 = icmp ne %struct.sctp_af* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  br label %49

35:                                               ; preds = %23
  %36 = load %struct.sock*, %struct.sock** %5, align 8
  %37 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %38 = bitcast %struct.sockaddr* %37 to %union.sctp_addr*
  %39 = load %struct.sctp_af*, %struct.sctp_af** %12, align 8
  %40 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @sctp_do_bind(%struct.sock* %36, %union.sctp_addr* %38, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.sctp_af*, %struct.sctp_af** %12, align 8
  %44 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %10, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr i8, i8* %46, i64 %47
  store i8* %48, i8** %10, align 8
  br label %49

49:                                               ; preds = %35, %32
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.sock*, %struct.sock** %5, align 8
  %57 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @sctp_bindx_rem(%struct.sock* %56, %struct.sockaddr* %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %52
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  br label %68

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %19

66:                                               ; preds = %19
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %60
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @SCTP_DEBUG_PRINTK(i8*, %struct.sock*, %struct.sockaddr*, i32) #1

declare dso_local %struct.sctp_af* @sctp_get_af_specific(i32) #1

declare dso_local i32 @sctp_do_bind(%struct.sock*, %union.sctp_addr*, i32) #1

declare dso_local i32 @sctp_bindx_rem(%struct.sock*, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
