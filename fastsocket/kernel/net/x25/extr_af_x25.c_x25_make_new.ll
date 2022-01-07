; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_af_x25.c_x25_make_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_af_x25.c_x25_make_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.x25_sock = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@TCP_ESTABLISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.sock*)* @x25_make_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @x25_make_new(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.x25_sock*, align 8
  %5 = alloca %struct.x25_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  store %struct.sock* null, %struct.sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SOCK_SEQPACKET, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %106

12:                                               ; preds = %1
  %13 = load %struct.sock*, %struct.sock** %2, align 8
  %14 = call i32 @sock_net(%struct.sock* %13)
  %15 = call %struct.sock* @x25_alloc_socket(i32 %14)
  store %struct.sock* %15, %struct.sock** %3, align 8
  %16 = icmp eq %struct.sock* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %106

18:                                               ; preds = %12
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = call %struct.x25_sock* @x25_sk(%struct.sock* %19)
  store %struct.x25_sock* %20, %struct.x25_sock** %4, align 8
  %21 = load %struct.sock*, %struct.sock** %2, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.sock*, %struct.sock** %3, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.sock*, %struct.sock** %2, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sock*, %struct.sock** %3, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 4
  %31 = load %struct.sock*, %struct.sock** %2, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.sock*, %struct.sock** %3, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 8
  %36 = load %struct.sock*, %struct.sock** %2, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sock*, %struct.sock** %3, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.sock*, %struct.sock** %2, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.sock*, %struct.sock** %3, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @TCP_ESTABLISHED, align 4
  %47 = load %struct.sock*, %struct.sock** %3, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.sock*, %struct.sock** %2, align 8
  %50 = getelementptr inbounds %struct.sock, %struct.sock* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.sock*, %struct.sock** %3, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.sock*, %struct.sock** %3, align 8
  %55 = load %struct.sock*, %struct.sock** %2, align 8
  %56 = call i32 @sock_copy_flags(%struct.sock* %54, %struct.sock* %55)
  %57 = load %struct.sock*, %struct.sock** %2, align 8
  %58 = call %struct.x25_sock* @x25_sk(%struct.sock* %57)
  store %struct.x25_sock* %58, %struct.x25_sock** %5, align 8
  %59 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %60 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.x25_sock*, %struct.x25_sock** %4, align 8
  %63 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %62, i32 0, i32 8
  store i32 %61, i32* %63, align 4
  %64 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %65 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.x25_sock*, %struct.x25_sock** %4, align 8
  %68 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %67, i32 0, i32 7
  store i32 %66, i32* %68, align 4
  %69 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %70 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.x25_sock*, %struct.x25_sock** %4, align 8
  %73 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %72, i32 0, i32 6
  store i32 %71, i32* %73, align 4
  %74 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %75 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.x25_sock*, %struct.x25_sock** %4, align 8
  %78 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 4
  %79 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %80 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.x25_sock*, %struct.x25_sock** %4, align 8
  %83 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 4
  %84 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %85 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.x25_sock*, %struct.x25_sock** %4, align 8
  %88 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %90 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.x25_sock*, %struct.x25_sock** %4, align 8
  %93 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %95 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.x25_sock*, %struct.x25_sock** %4, align 8
  %98 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %100 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.x25_sock*, %struct.x25_sock** %4, align 8
  %103 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load %struct.sock*, %struct.sock** %3, align 8
  %105 = call i32 @x25_init_timers(%struct.sock* %104)
  br label %106

106:                                              ; preds = %18, %17, %11
  %107 = load %struct.sock*, %struct.sock** %3, align 8
  ret %struct.sock* %107
}

declare dso_local %struct.sock* @x25_alloc_socket(i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #1

declare dso_local i32 @sock_copy_flags(%struct.sock*, %struct.sock*) #1

declare dso_local i32 @x25_init_timers(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
