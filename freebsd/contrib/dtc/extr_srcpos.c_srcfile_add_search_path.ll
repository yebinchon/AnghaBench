; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_srcpos.c_srcfile_add_search_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_srcpos.c_srcfile_add_search_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.search_path = type { %struct.search_path*, i32 }

@search_path_tail = common dso_local global %struct.search_path** null, align 8
@search_path_head = common dso_local global %struct.search_path* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @srcfile_add_search_path(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.search_path*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call %struct.search_path* @xmalloc(i32 16)
  store %struct.search_path* %4, %struct.search_path** %3, align 8
  %5 = load %struct.search_path*, %struct.search_path** %3, align 8
  %6 = getelementptr inbounds %struct.search_path, %struct.search_path* %5, i32 0, i32 0
  store %struct.search_path* null, %struct.search_path** %6, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @xstrdup(i8* %7)
  %9 = load %struct.search_path*, %struct.search_path** %3, align 8
  %10 = getelementptr inbounds %struct.search_path, %struct.search_path* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  %11 = load %struct.search_path**, %struct.search_path*** @search_path_tail, align 8
  %12 = icmp ne %struct.search_path** %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.search_path*, %struct.search_path** %3, align 8
  %15 = load %struct.search_path**, %struct.search_path*** @search_path_tail, align 8
  store %struct.search_path* %14, %struct.search_path** %15, align 8
  br label %18

16:                                               ; preds = %1
  %17 = load %struct.search_path*, %struct.search_path** %3, align 8
  store %struct.search_path* %17, %struct.search_path** @search_path_head, align 8
  br label %18

18:                                               ; preds = %16, %13
  %19 = load %struct.search_path*, %struct.search_path** %3, align 8
  %20 = getelementptr inbounds %struct.search_path, %struct.search_path* %19, i32 0, i32 0
  store %struct.search_path** %20, %struct.search_path*** @search_path_tail, align 8
  ret void
}

declare dso_local %struct.search_path* @xmalloc(i32) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
