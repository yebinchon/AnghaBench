; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_sack_maybe_coalesce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_sack_maybe_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_sock = type { %struct.TYPE_2__, %struct.tcp_sack_block* }
%struct.TYPE_2__ = type { i32 }
%struct.tcp_sack_block = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_sock*)* @tcp_sack_maybe_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_sack_maybe_coalesce(%struct.tcp_sock* %0) #0 {
  %2 = alloca %struct.tcp_sock*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcp_sack_block*, align 8
  %5 = alloca %struct.tcp_sack_block*, align 8
  %6 = alloca i32, align 4
  store %struct.tcp_sock* %0, %struct.tcp_sock** %2, align 8
  %7 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %8 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %7, i32 0, i32 1
  %9 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %8, align 8
  %10 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %9, i64 0
  store %struct.tcp_sack_block* %10, %struct.tcp_sack_block** %4, align 8
  %11 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %4, align 8
  %12 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %11, i64 1
  store %struct.tcp_sack_block* %12, %struct.tcp_sack_block** %5, align 8
  store i32 1, i32* %3, align 4
  br label %13

13:                                               ; preds = %60, %59, %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %16 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %65

20:                                               ; preds = %13
  %21 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %4, align 8
  %22 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %5, align 8
  %23 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %5, align 8
  %26 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @tcp_sack_extend(%struct.tcp_sack_block* %21, i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %20
  %31 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %32 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 8
  %36 = load i32, i32* %3, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %56, %30
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %40 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %38, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %37
  %45 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %45, i64 %47
  %49 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %49, i64 %52
  %54 = bitcast %struct.tcp_sack_block* %48 to i8*
  %55 = bitcast %struct.tcp_sack_block* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 8, i1 false)
  br label %56

56:                                               ; preds = %44
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %37

59:                                               ; preds = %37
  br label %13

60:                                               ; preds = %20
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  %63 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %5, align 8
  %64 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %63, i32 1
  store %struct.tcp_sack_block* %64, %struct.tcp_sack_block** %5, align 8
  br label %13

65:                                               ; preds = %13
  ret void
}

declare dso_local i64 @tcp_sack_extend(%struct.tcp_sack_block*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
