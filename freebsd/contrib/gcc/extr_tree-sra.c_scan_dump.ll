; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_scan_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_scan_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sra_elt = type { i32, i32, %struct.sra_elt*, %struct.sra_elt*, %struct.sra_elt* }

@dump_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c": n_uses=%u n_copies=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sra_elt*)* @scan_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_dump(%struct.sra_elt* %0) #0 {
  %2 = alloca %struct.sra_elt*, align 8
  %3 = alloca %struct.sra_elt*, align 8
  store %struct.sra_elt* %0, %struct.sra_elt** %2, align 8
  %4 = load i32, i32* @dump_file, align 4
  %5 = load %struct.sra_elt*, %struct.sra_elt** %2, align 8
  %6 = call i32 @dump_sra_elt_name(i32 %4, %struct.sra_elt* %5)
  %7 = load i32, i32* @dump_file, align 4
  %8 = load %struct.sra_elt*, %struct.sra_elt** %2, align 8
  %9 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.sra_elt*, %struct.sra_elt** %2, align 8
  %12 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  %15 = load %struct.sra_elt*, %struct.sra_elt** %2, align 8
  %16 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %15, i32 0, i32 4
  %17 = load %struct.sra_elt*, %struct.sra_elt** %16, align 8
  store %struct.sra_elt* %17, %struct.sra_elt** %3, align 8
  br label %18

18:                                               ; preds = %23, %1
  %19 = load %struct.sra_elt*, %struct.sra_elt** %3, align 8
  %20 = icmp ne %struct.sra_elt* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load %struct.sra_elt*, %struct.sra_elt** %3, align 8
  call void @scan_dump(%struct.sra_elt* %22)
  br label %23

23:                                               ; preds = %21
  %24 = load %struct.sra_elt*, %struct.sra_elt** %3, align 8
  %25 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %24, i32 0, i32 2
  %26 = load %struct.sra_elt*, %struct.sra_elt** %25, align 8
  store %struct.sra_elt* %26, %struct.sra_elt** %3, align 8
  br label %18

27:                                               ; preds = %18
  %28 = load %struct.sra_elt*, %struct.sra_elt** %2, align 8
  %29 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %28, i32 0, i32 3
  %30 = load %struct.sra_elt*, %struct.sra_elt** %29, align 8
  store %struct.sra_elt* %30, %struct.sra_elt** %3, align 8
  br label %31

31:                                               ; preds = %36, %27
  %32 = load %struct.sra_elt*, %struct.sra_elt** %3, align 8
  %33 = icmp ne %struct.sra_elt* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.sra_elt*, %struct.sra_elt** %3, align 8
  call void @scan_dump(%struct.sra_elt* %35)
  br label %36

36:                                               ; preds = %34
  %37 = load %struct.sra_elt*, %struct.sra_elt** %3, align 8
  %38 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %37, i32 0, i32 2
  %39 = load %struct.sra_elt*, %struct.sra_elt** %38, align 8
  store %struct.sra_elt* %39, %struct.sra_elt** %3, align 8
  br label %31

40:                                               ; preds = %31
  ret void
}

declare dso_local i32 @dump_sra_elt_name(i32, %struct.sra_elt*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
