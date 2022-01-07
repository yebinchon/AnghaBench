; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-inline.c_cgraph_set_inline_failed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-inline.c_cgraph_set_inline_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { %struct.cgraph_edge* }
%struct.cgraph_edge = type { i8*, %struct.cgraph_edge* }

@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Inlining failed: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgraph_node*, i8*)* @cgraph_set_inline_failed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgraph_set_inline_failed(%struct.cgraph_node* %0, i8* %1) #0 {
  %3 = alloca %struct.cgraph_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cgraph_edge*, align 8
  store %struct.cgraph_node* %0, %struct.cgraph_node** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i64, i64* @dump_file, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i64, i64* @dump_file, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @fprintf(i64 %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %10)
  br label %12

12:                                               ; preds = %8, %2
  %13 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %14 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %13, i32 0, i32 0
  %15 = load %struct.cgraph_edge*, %struct.cgraph_edge** %14, align 8
  store %struct.cgraph_edge* %15, %struct.cgraph_edge** %5, align 8
  br label %16

16:                                               ; preds = %29, %12
  %17 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %18 = icmp ne %struct.cgraph_edge* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %21 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %27 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  br label %28

28:                                               ; preds = %24, %19
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %31 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %30, i32 0, i32 1
  %32 = load %struct.cgraph_edge*, %struct.cgraph_edge** %31, align 8
  store %struct.cgraph_edge* %32, %struct.cgraph_edge** %5, align 8
  br label %16

33:                                               ; preds = %16
  ret void
}

declare dso_local i32 @fprintf(i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
