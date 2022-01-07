; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-script.c_copy_command_lines.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-script.c_copy_command_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command_line = type { i32, %struct.command_line**, i32, i32, %struct.command_line* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.command_line* @copy_command_lines(%struct.command_line* %0) #0 {
  %2 = alloca %struct.command_line*, align 8
  %3 = alloca %struct.command_line*, align 8
  %4 = alloca i32, align 4
  store %struct.command_line* %0, %struct.command_line** %2, align 8
  store %struct.command_line* null, %struct.command_line** %3, align 8
  %5 = load %struct.command_line*, %struct.command_line** %2, align 8
  %6 = icmp ne %struct.command_line* %5, null
  br i1 %6, label %7, label %76

7:                                                ; preds = %1
  %8 = call i64 @xmalloc(i32 32)
  %9 = inttoptr i64 %8 to %struct.command_line*
  store %struct.command_line* %9, %struct.command_line** %3, align 8
  %10 = load %struct.command_line*, %struct.command_line** %2, align 8
  %11 = getelementptr inbounds %struct.command_line, %struct.command_line* %10, i32 0, i32 4
  %12 = load %struct.command_line*, %struct.command_line** %11, align 8
  %13 = call %struct.command_line* @copy_command_lines(%struct.command_line* %12)
  %14 = load %struct.command_line*, %struct.command_line** %3, align 8
  %15 = getelementptr inbounds %struct.command_line, %struct.command_line* %14, i32 0, i32 4
  store %struct.command_line* %13, %struct.command_line** %15, align 8
  %16 = load %struct.command_line*, %struct.command_line** %2, align 8
  %17 = getelementptr inbounds %struct.command_line, %struct.command_line* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @xstrdup(i32 %18)
  %20 = load %struct.command_line*, %struct.command_line** %3, align 8
  %21 = getelementptr inbounds %struct.command_line, %struct.command_line* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.command_line*, %struct.command_line** %2, align 8
  %23 = getelementptr inbounds %struct.command_line, %struct.command_line* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.command_line*, %struct.command_line** %3, align 8
  %26 = getelementptr inbounds %struct.command_line, %struct.command_line* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.command_line*, %struct.command_line** %2, align 8
  %28 = getelementptr inbounds %struct.command_line, %struct.command_line* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.command_line*, %struct.command_line** %3, align 8
  %31 = getelementptr inbounds %struct.command_line, %struct.command_line* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.command_line*, %struct.command_line** %2, align 8
  %33 = getelementptr inbounds %struct.command_line, %struct.command_line* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %72

36:                                               ; preds = %7
  %37 = load %struct.command_line*, %struct.command_line** %2, align 8
  %38 = getelementptr inbounds %struct.command_line, %struct.command_line* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = mul i64 8, %40
  %42 = trunc i64 %41 to i32
  %43 = call i64 @xmalloc(i32 %42)
  %44 = inttoptr i64 %43 to %struct.command_line**
  %45 = load %struct.command_line*, %struct.command_line** %3, align 8
  %46 = getelementptr inbounds %struct.command_line, %struct.command_line* %45, i32 0, i32 1
  store %struct.command_line** %44, %struct.command_line*** %46, align 8
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %68, %36
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.command_line*, %struct.command_line** %2, align 8
  %50 = getelementptr inbounds %struct.command_line, %struct.command_line* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %47
  %54 = load %struct.command_line*, %struct.command_line** %2, align 8
  %55 = getelementptr inbounds %struct.command_line, %struct.command_line* %54, i32 0, i32 1
  %56 = load %struct.command_line**, %struct.command_line*** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.command_line*, %struct.command_line** %56, i64 %58
  %60 = load %struct.command_line*, %struct.command_line** %59, align 8
  %61 = call %struct.command_line* @copy_command_lines(%struct.command_line* %60)
  %62 = load %struct.command_line*, %struct.command_line** %3, align 8
  %63 = getelementptr inbounds %struct.command_line, %struct.command_line* %62, i32 0, i32 1
  %64 = load %struct.command_line**, %struct.command_line*** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.command_line*, %struct.command_line** %64, i64 %66
  store %struct.command_line* %61, %struct.command_line** %67, align 8
  br label %68

68:                                               ; preds = %53
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %47

71:                                               ; preds = %47
  br label %75

72:                                               ; preds = %7
  %73 = load %struct.command_line*, %struct.command_line** %3, align 8
  %74 = getelementptr inbounds %struct.command_line, %struct.command_line* %73, i32 0, i32 1
  store %struct.command_line** null, %struct.command_line*** %74, align 8
  br label %75

75:                                               ; preds = %72, %71
  br label %76

76:                                               ; preds = %75, %1
  %77 = load %struct.command_line*, %struct.command_line** %3, align 8
  ret %struct.command_line* %77
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @xstrdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
