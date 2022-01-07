; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_line-map.c_trace_include.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_line-map.c_trace_include.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_maps = type { i32 }
%struct.line_map = type { i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.line_maps*, %struct.line_map*)* @trace_include to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trace_include(%struct.line_maps* %0, %struct.line_map* %1) #0 {
  %3 = alloca %struct.line_maps*, align 8
  %4 = alloca %struct.line_map*, align 8
  %5 = alloca i32, align 4
  store %struct.line_maps* %0, %struct.line_maps** %3, align 8
  store %struct.line_map* %1, %struct.line_map** %4, align 8
  %6 = load %struct.line_maps*, %struct.line_maps** %3, align 8
  %7 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  br label %9

9:                                                ; preds = %13, %2
  %10 = load i32, i32* %5, align 4
  %11 = add i32 %10, -1
  store i32 %11, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 @putc(i8 signext 46, i32 %14)
  br label %9

16:                                               ; preds = %9
  %17 = load i32, i32* @stderr, align 4
  %18 = load %struct.line_map*, %struct.line_map** %4, align 8
  %19 = getelementptr inbounds %struct.line_map, %struct.line_map* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %20)
  ret void
}

declare dso_local i32 @putc(i8 signext, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
