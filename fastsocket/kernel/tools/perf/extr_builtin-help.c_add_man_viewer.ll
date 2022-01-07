; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-help.c_add_man_viewer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-help.c_add_man_viewer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.man_viewer_list = type { i32, %struct.man_viewer_list* }

@man_viewer_list = common dso_local global %struct.man_viewer_list* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @add_man_viewer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_man_viewer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.man_viewer_list**, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store %struct.man_viewer_list** @man_viewer_list, %struct.man_viewer_list*** %3, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 @strlen(i8* %5)
  store i64 %6, i64* %4, align 8
  br label %7

7:                                                ; preds = %11, %1
  %8 = load %struct.man_viewer_list**, %struct.man_viewer_list*** %3, align 8
  %9 = load %struct.man_viewer_list*, %struct.man_viewer_list** %8, align 8
  %10 = icmp ne %struct.man_viewer_list* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load %struct.man_viewer_list**, %struct.man_viewer_list*** %3, align 8
  %13 = load %struct.man_viewer_list*, %struct.man_viewer_list** %12, align 8
  %14 = getelementptr inbounds %struct.man_viewer_list, %struct.man_viewer_list* %13, i32 0, i32 1
  store %struct.man_viewer_list** %14, %struct.man_viewer_list*** %3, align 8
  br label %7

15:                                               ; preds = %7
  %16 = load i64, i64* %4, align 8
  %17 = add i64 16, %16
  %18 = add i64 %17, 1
  %19 = trunc i64 %18 to i32
  %20 = call %struct.man_viewer_list* @zalloc(i32 %19)
  %21 = load %struct.man_viewer_list**, %struct.man_viewer_list*** %3, align 8
  store %struct.man_viewer_list* %20, %struct.man_viewer_list** %21, align 8
  %22 = load %struct.man_viewer_list**, %struct.man_viewer_list*** %3, align 8
  %23 = load %struct.man_viewer_list*, %struct.man_viewer_list** %22, align 8
  %24 = getelementptr inbounds %struct.man_viewer_list, %struct.man_viewer_list* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %2, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @strncpy(i32 %25, i8* %26, i64 %27)
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.man_viewer_list* @zalloc(i32) #1

declare dso_local i32 @strncpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
