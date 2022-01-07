; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_ifdef.c_groups_letter_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_ifdef.c_groups_letter_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.group*, i8)* @groups_letter_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @groups_letter_value(%struct.group* %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.group*, align 8
  %5 = alloca i8, align 1
  store %struct.group* %0, %struct.group** %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  switch i32 %7, label %23 [
    i32 69, label %8
    i32 70, label %11
    i32 76, label %14
    i32 77, label %17
    i32 78, label %20
  ]

8:                                                ; preds = %2
  store i8 101, i8* %5, align 1
  %9 = load %struct.group*, %struct.group** %4, align 8
  %10 = getelementptr inbounds %struct.group, %struct.group* %9, i32 1
  store %struct.group* %10, %struct.group** %4, align 8
  br label %23

11:                                               ; preds = %2
  store i8 102, i8* %5, align 1
  %12 = load %struct.group*, %struct.group** %4, align 8
  %13 = getelementptr inbounds %struct.group, %struct.group* %12, i32 1
  store %struct.group* %13, %struct.group** %4, align 8
  br label %23

14:                                               ; preds = %2
  store i8 108, i8* %5, align 1
  %15 = load %struct.group*, %struct.group** %4, align 8
  %16 = getelementptr inbounds %struct.group, %struct.group* %15, i32 1
  store %struct.group* %16, %struct.group** %4, align 8
  br label %23

17:                                               ; preds = %2
  store i8 109, i8* %5, align 1
  %18 = load %struct.group*, %struct.group** %4, align 8
  %19 = getelementptr inbounds %struct.group, %struct.group* %18, i32 1
  store %struct.group* %19, %struct.group** %4, align 8
  br label %23

20:                                               ; preds = %2
  store i8 110, i8* %5, align 1
  %21 = load %struct.group*, %struct.group** %4, align 8
  %22 = getelementptr inbounds %struct.group, %struct.group* %21, i32 1
  store %struct.group* %22, %struct.group** %4, align 8
  br label %23

23:                                               ; preds = %2, %20, %17, %14, %11, %8
  %24 = load i8, i8* %5, align 1
  %25 = sext i8 %24 to i32
  switch i32 %25, label %68 [
    i32 101, label %26
    i32 102, label %35
    i32 108, label %43
    i32 109, label %52
    i32 110, label %60
  ]

26:                                               ; preds = %23
  %27 = load %struct.group*, %struct.group** %4, align 8
  %28 = getelementptr inbounds %struct.group, %struct.group* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.group*, %struct.group** %4, align 8
  %31 = getelementptr inbounds %struct.group, %struct.group* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @translate_line_number(i32 %29, i32 %32)
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %69

35:                                               ; preds = %23
  %36 = load %struct.group*, %struct.group** %4, align 8
  %37 = getelementptr inbounds %struct.group, %struct.group* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.group*, %struct.group** %4, align 8
  %40 = getelementptr inbounds %struct.group, %struct.group* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @translate_line_number(i32 %38, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %69

43:                                               ; preds = %23
  %44 = load %struct.group*, %struct.group** %4, align 8
  %45 = getelementptr inbounds %struct.group, %struct.group* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.group*, %struct.group** %4, align 8
  %48 = getelementptr inbounds %struct.group, %struct.group* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @translate_line_number(i32 %46, i32 %49)
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %69

52:                                               ; preds = %23
  %53 = load %struct.group*, %struct.group** %4, align 8
  %54 = getelementptr inbounds %struct.group, %struct.group* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.group*, %struct.group** %4, align 8
  %57 = getelementptr inbounds %struct.group, %struct.group* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @translate_line_number(i32 %55, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %69

60:                                               ; preds = %23
  %61 = load %struct.group*, %struct.group** %4, align 8
  %62 = getelementptr inbounds %struct.group, %struct.group* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.group*, %struct.group** %4, align 8
  %65 = getelementptr inbounds %struct.group, %struct.group* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %63, %66
  store i32 %67, i32* %3, align 4
  br label %69

68:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %60, %52, %43, %35, %26
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @translate_line_number(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
