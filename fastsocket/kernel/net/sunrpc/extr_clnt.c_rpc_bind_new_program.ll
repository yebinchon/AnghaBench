; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_rpc_bind_new_program.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_rpc_bind_new_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32, i32, i32, i32, i32, i32 }
%struct.rpc_program = type { i64, i32, i32, i32, %struct.rpc_version** }
%struct.rpc_version = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_clnt* @rpc_bind_new_program(%struct.rpc_clnt* %0, %struct.rpc_program* %1, i64 %2) #0 {
  %4 = alloca %struct.rpc_clnt*, align 8
  %5 = alloca %struct.rpc_program*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rpc_clnt*, align 8
  %8 = alloca %struct.rpc_version*, align 8
  %9 = alloca i32, align 4
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %4, align 8
  store %struct.rpc_program* %1, %struct.rpc_program** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.rpc_program*, %struct.rpc_program** %5, align 8
  %12 = getelementptr inbounds %struct.rpc_program, %struct.rpc_program* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp uge i64 %10, %13
  br i1 %14, label %24, label %15

15:                                               ; preds = %3
  %16 = load %struct.rpc_program*, %struct.rpc_program** %5, align 8
  %17 = getelementptr inbounds %struct.rpc_program, %struct.rpc_program* %16, i32 0, i32 4
  %18 = load %struct.rpc_version**, %struct.rpc_version*** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.rpc_version*, %struct.rpc_version** %18, i64 %19
  %21 = load %struct.rpc_version*, %struct.rpc_version** %20, align 8
  %22 = icmp ne %struct.rpc_version* %21, null
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %15, %3
  %25 = phi i1 [ true, %3 ], [ %23, %15 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.rpc_program*, %struct.rpc_program** %5, align 8
  %29 = getelementptr inbounds %struct.rpc_program, %struct.rpc_program* %28, i32 0, i32 4
  %30 = load %struct.rpc_version**, %struct.rpc_version*** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.rpc_version*, %struct.rpc_version** %30, i64 %31
  %33 = load %struct.rpc_version*, %struct.rpc_version** %32, align 8
  store %struct.rpc_version* %33, %struct.rpc_version** %8, align 8
  %34 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %35 = call %struct.rpc_clnt* @rpc_clone_client(%struct.rpc_clnt* %34)
  store %struct.rpc_clnt* %35, %struct.rpc_clnt** %7, align 8
  %36 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  %37 = call i64 @IS_ERR(%struct.rpc_clnt* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %24
  br label %81

40:                                               ; preds = %24
  %41 = load %struct.rpc_version*, %struct.rpc_version** %8, align 8
  %42 = getelementptr inbounds %struct.rpc_version, %struct.rpc_version* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  %45 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  %46 = load %struct.rpc_version*, %struct.rpc_version** %8, align 8
  %47 = getelementptr inbounds %struct.rpc_version, %struct.rpc_version* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  %50 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load %struct.rpc_program*, %struct.rpc_program** %5, align 8
  %52 = getelementptr inbounds %struct.rpc_program, %struct.rpc_program* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  %55 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.rpc_program*, %struct.rpc_program** %5, align 8
  %57 = getelementptr inbounds %struct.rpc_program, %struct.rpc_program* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  %60 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load %struct.rpc_version*, %struct.rpc_version** %8, align 8
  %62 = getelementptr inbounds %struct.rpc_version, %struct.rpc_version* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  %65 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.rpc_program*, %struct.rpc_program** %5, align 8
  %67 = getelementptr inbounds %struct.rpc_program, %struct.rpc_program* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  %70 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  %72 = call i32 @rpc_ping(%struct.rpc_clnt* %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %40
  %76 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  %77 = call i32 @rpc_shutdown_client(%struct.rpc_clnt* %76)
  %78 = load i32, i32* %9, align 4
  %79 = call %struct.rpc_clnt* @ERR_PTR(i32 %78)
  store %struct.rpc_clnt* %79, %struct.rpc_clnt** %7, align 8
  br label %80

80:                                               ; preds = %75, %40
  br label %81

81:                                               ; preds = %80, %39
  %82 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  ret %struct.rpc_clnt* %82
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.rpc_clnt* @rpc_clone_client(%struct.rpc_clnt*) #1

declare dso_local i64 @IS_ERR(%struct.rpc_clnt*) #1

declare dso_local i32 @rpc_ping(%struct.rpc_clnt*) #1

declare dso_local i32 @rpc_shutdown_client(%struct.rpc_clnt*) #1

declare dso_local %struct.rpc_clnt* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
