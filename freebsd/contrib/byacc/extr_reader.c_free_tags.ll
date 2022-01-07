; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_free_tags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_free_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tag_table = common dso_local global i32***** null, align 8
@ntags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @free_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_tags() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*****, i32****** @tag_table, align 8
  %3 = icmp eq i32***** %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %30

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %24, %5
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @ntags, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = load i32*****, i32****** @tag_table, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32****, i32***** %11, i64 %13
  %15 = load i32****, i32***** %14, align 8
  %16 = call i32 @assert(i32**** %15)
  %17 = load i32*****, i32****** @tag_table, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32****, i32***** %17, i64 %19
  %21 = load i32****, i32***** %20, align 8
  %22 = bitcast i32**** %21 to i32*****
  %23 = call i32 @FREE(i32***** %22)
  br label %24

24:                                               ; preds = %10
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  br label %6

27:                                               ; preds = %6
  %28 = load i32*****, i32****** @tag_table, align 8
  %29 = call i32 @FREE(i32***** %28)
  br label %30

30:                                               ; preds = %27, %4
  ret void
}

declare dso_local i32 @assert(i32****) #1

declare dso_local i32 @FREE(i32*****) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
