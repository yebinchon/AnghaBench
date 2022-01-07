; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_message.c_rds_message_alloc_sgs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_message.c_rds_message_alloc_sgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }
%struct.rds_message = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.scatterlist* @rds_message_alloc_sgs(%struct.rds_message* %0, i32 %1) #0 {
  %3 = alloca %struct.scatterlist*, align 8
  %4 = alloca %struct.rds_message*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  store %struct.rds_message* %0, %struct.rds_message** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.rds_message*, %struct.rds_message** %4, align 8
  %9 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %8, i64 1
  %10 = bitcast %struct.rds_message* %9 to %struct.scatterlist*
  store %struct.scatterlist* %10, %struct.scatterlist** %6, align 8
  %11 = load %struct.rds_message*, %struct.rds_message** %4, align 8
  %12 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %13, %14
  %16 = load %struct.rds_message*, %struct.rds_message** %4, align 8
  %17 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %15, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load %struct.rds_message*, %struct.rds_message** %4, align 8
  %28 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %29, %30
  %32 = load %struct.rds_message*, %struct.rds_message** %4, align 8
  %33 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  store %struct.scatterlist* null, %struct.scatterlist** %3, align 8
  br label %53

37:                                               ; preds = %2
  %38 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %39 = load %struct.rds_message*, %struct.rds_message** %4, align 8
  %40 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %38, i64 %42
  store %struct.scatterlist* %43, %struct.scatterlist** %7, align 8
  %44 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @sg_init_table(%struct.scatterlist* %44, i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.rds_message*, %struct.rds_message** %4, align 8
  %49 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  store %struct.scatterlist* %52, %struct.scatterlist** %3, align 8
  br label %53

53:                                               ; preds = %37, %36
  %54 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  ret %struct.scatterlist* %54
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
