; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_recv.c_rds_recv_rcvbuf_delta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_recv.c_rds_recv_rcvbuf_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_sock = type { i32, i32, i32, i32 }
%struct.sock = type { i32 }
%struct.rds_cong_map = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"rs %p (%pI4:%u) recv bytes %d buf %d now_cong %d delta %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_sock*, %struct.sock*, %struct.rds_cong_map*, i32, i32)* @rds_recv_rcvbuf_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_recv_rcvbuf_delta(%struct.rds_sock* %0, %struct.sock* %1, %struct.rds_cong_map* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.rds_sock*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.rds_cong_map*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rds_sock* %0, %struct.rds_sock** %6, align 8
  store %struct.sock* %1, %struct.sock** %7, align 8
  store %struct.rds_cong_map* %2, %struct.rds_cong_map** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  br label %80

15:                                               ; preds = %5
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %18 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %22 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %25 = call i32 @rds_sk_rcvbuf(%struct.rds_sock* %24)
  %26 = icmp sgt i32 %23, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %11, align 4
  %28 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %29 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %30 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %29, i32 0, i32 3
  %31 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %32 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ntohs(i32 %33)
  %35 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %36 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %39 = call i32 @rds_sk_rcvbuf(%struct.rds_sock* %38)
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @rdsdebug(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), %struct.rds_sock* %28, i32* %30, i32 %34, i32 %37, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %44 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %15
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %52 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load %struct.rds_cong_map*, %struct.rds_cong_map** %8, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @rds_cong_set_bit(%struct.rds_cong_map* %53, i32 %54)
  %56 = load %struct.rds_cong_map*, %struct.rds_cong_map** %8, align 8
  %57 = call i32 @rds_cong_queue_updates(%struct.rds_cong_map* %56)
  br label %80

58:                                               ; preds = %47, %15
  %59 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %60 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %58
  %64 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %65 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %68 = call i32 @rds_sk_rcvbuf(%struct.rds_sock* %67)
  %69 = sdiv i32 %68, 2
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %63
  %72 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %73 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %72, i32 0, i32 1
  store i32 0, i32* %73, align 4
  %74 = load %struct.rds_cong_map*, %struct.rds_cong_map** %8, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @rds_cong_clear_bit(%struct.rds_cong_map* %74, i32 %75)
  %77 = load %struct.rds_cong_map*, %struct.rds_cong_map** %8, align 8
  %78 = call i32 @rds_cong_queue_updates(%struct.rds_cong_map* %77)
  br label %79

79:                                               ; preds = %71, %63, %58
  br label %80

80:                                               ; preds = %14, %79, %50
  ret void
}

declare dso_local i32 @rds_sk_rcvbuf(%struct.rds_sock*) #1

declare dso_local i32 @rdsdebug(i8*, %struct.rds_sock*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @rds_cong_set_bit(%struct.rds_cong_map*, i32) #1

declare dso_local i32 @rds_cong_queue_updates(%struct.rds_cong_map*) #1

declare dso_local i32 @rds_cong_clear_bit(%struct.rds_cong_map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
