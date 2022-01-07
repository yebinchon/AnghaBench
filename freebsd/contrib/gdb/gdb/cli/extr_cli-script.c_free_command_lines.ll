; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-script.c_free_command_lines.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-script.c_free_command_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command_line = type { i32, %struct.command_line*, %struct.command_line*, %struct.command_line** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_command_lines(%struct.command_line** %0) #0 {
  %2 = alloca %struct.command_line**, align 8
  %3 = alloca %struct.command_line*, align 8
  %4 = alloca %struct.command_line*, align 8
  %5 = alloca %struct.command_line**, align 8
  %6 = alloca i32, align 4
  store %struct.command_line** %0, %struct.command_line*** %2, align 8
  %7 = load %struct.command_line**, %struct.command_line*** %2, align 8
  %8 = load %struct.command_line*, %struct.command_line** %7, align 8
  store %struct.command_line* %8, %struct.command_line** %3, align 8
  br label %9

9:                                                ; preds = %35, %1
  %10 = load %struct.command_line*, %struct.command_line** %3, align 8
  %11 = icmp ne %struct.command_line* %10, null
  br i1 %11, label %12, label %46

12:                                               ; preds = %9
  %13 = load %struct.command_line*, %struct.command_line** %3, align 8
  %14 = getelementptr inbounds %struct.command_line, %struct.command_line* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %12
  %18 = load %struct.command_line*, %struct.command_line** %3, align 8
  %19 = getelementptr inbounds %struct.command_line, %struct.command_line* %18, i32 0, i32 3
  %20 = load %struct.command_line**, %struct.command_line*** %19, align 8
  store %struct.command_line** %20, %struct.command_line*** %5, align 8
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %29, %17
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.command_line*, %struct.command_line** %3, align 8
  %24 = getelementptr inbounds %struct.command_line, %struct.command_line* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.command_line**, %struct.command_line*** %5, align 8
  call void @free_command_lines(%struct.command_line** %28)
  br label %29

29:                                               ; preds = %27
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  %32 = load %struct.command_line**, %struct.command_line*** %5, align 8
  %33 = getelementptr inbounds %struct.command_line*, %struct.command_line** %32, i32 1
  store %struct.command_line** %33, %struct.command_line*** %5, align 8
  br label %21

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34, %12
  %36 = load %struct.command_line*, %struct.command_line** %3, align 8
  %37 = getelementptr inbounds %struct.command_line, %struct.command_line* %36, i32 0, i32 2
  %38 = load %struct.command_line*, %struct.command_line** %37, align 8
  store %struct.command_line* %38, %struct.command_line** %4, align 8
  %39 = load %struct.command_line*, %struct.command_line** %3, align 8
  %40 = getelementptr inbounds %struct.command_line, %struct.command_line* %39, i32 0, i32 1
  %41 = load %struct.command_line*, %struct.command_line** %40, align 8
  %42 = call i32 @xfree(%struct.command_line* %41)
  %43 = load %struct.command_line*, %struct.command_line** %3, align 8
  %44 = call i32 @xfree(%struct.command_line* %43)
  %45 = load %struct.command_line*, %struct.command_line** %4, align 8
  store %struct.command_line* %45, %struct.command_line** %3, align 8
  br label %9

46:                                               ; preds = %9
  %47 = load %struct.command_line**, %struct.command_line*** %2, align 8
  store %struct.command_line* null, %struct.command_line** %47, align 8
  ret void
}

declare dso_local i32 @xfree(%struct.command_line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
