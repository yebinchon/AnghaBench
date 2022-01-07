; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_recv.c_rds_inc_info_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_recv.c_rds_inc_info_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_incoming = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.rds_info_iterator = type { i32 }
%struct.rds_info_message = type { i32, i32, i8*, i8*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_inc_info_copy(%struct.rds_incoming* %0, %struct.rds_info_iterator* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.rds_incoming*, align 8
  %7 = alloca %struct.rds_info_iterator*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rds_info_message, align 8
  store %struct.rds_incoming* %0, %struct.rds_incoming** %6, align 8
  store %struct.rds_info_iterator* %1, %struct.rds_info_iterator** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.rds_incoming*, %struct.rds_incoming** %6, align 8
  %13 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @be64_to_cpu(i32 %15)
  %17 = getelementptr inbounds %struct.rds_info_message, %struct.rds_info_message* %11, i32 0, i32 5
  store i32 %16, i32* %17, align 4
  %18 = load %struct.rds_incoming*, %struct.rds_incoming** %6, align 8
  %19 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @be32_to_cpu(i32 %21)
  %23 = getelementptr inbounds %struct.rds_info_message, %struct.rds_info_message* %11, i32 0, i32 4
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %5
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds %struct.rds_info_message, %struct.rds_info_message* %11, i32 0, i32 3
  store i8* %27, i8** %28, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds %struct.rds_info_message, %struct.rds_info_message* %11, i32 0, i32 2
  store i8* %29, i8** %30, align 8
  %31 = load %struct.rds_incoming*, %struct.rds_incoming** %6, align 8
  %32 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.rds_info_message, %struct.rds_info_message* %11, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load %struct.rds_incoming*, %struct.rds_incoming** %6, align 8
  %37 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.rds_info_message, %struct.rds_info_message* %11, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  br label %56

41:                                               ; preds = %5
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds %struct.rds_info_message, %struct.rds_info_message* %11, i32 0, i32 3
  store i8* %42, i8** %43, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds %struct.rds_info_message, %struct.rds_info_message* %11, i32 0, i32 2
  store i8* %44, i8** %45, align 8
  %46 = load %struct.rds_incoming*, %struct.rds_incoming** %6, align 8
  %47 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.rds_info_message, %struct.rds_info_message* %11, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load %struct.rds_incoming*, %struct.rds_incoming** %6, align 8
  %52 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.rds_info_message, %struct.rds_info_message* %11, i32 0, i32 0
  store i32 %54, i32* %55, align 8
  br label %56

56:                                               ; preds = %41, %26
  %57 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %7, align 8
  %58 = call i32 @rds_info_copy(%struct.rds_info_iterator* %57, %struct.rds_info_message* %11, i32 32)
  ret void
}

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @rds_info_copy(%struct.rds_info_iterator*, %struct.rds_info_message*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
