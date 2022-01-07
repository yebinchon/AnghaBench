; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dwarf.c_process_extended_line_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dwarf.c_process_extended_line_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [44 x i8] c"badly formed extended line op encountered!\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"  Extended opcode %d: \00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"End of Sequence\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"set Address to 0x%lx\0A\00", align 1
@state_machine_regs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"  define new File Table entry\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"  Entry\09Dir\09Time\09Size\09Name\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"   %d\09\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%lu\09\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"UNKNOWN: length %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @process_extended_line_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_extended_line_op(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @read_leb128(i8* %11, i32* %7, i32 0)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = zext i32 %13 to i64
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  store i8* %16, i8** %4, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = call i8* @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @warn(i8* %20)
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %99

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = add i32 %25, %24
  store i32 %26, i32* %8, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %4, align 8
  %29 = load i8, i8* %27, align 1
  store i8 %29, i8* %6, align 1
  %30 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i8, i8* %6, align 1
  %32 = zext i8 %31 to i32
  %33 = call i32 (i8*, ...) @printf(i8* %30, i32 %32)
  %34 = load i8, i8* %6, align 1
  %35 = zext i8 %34 to i32
  switch i32 %35, label %91 [
    i32 129, label %36
    i32 128, label %41
    i32 130, label %52
  ]

36:                                               ; preds = %23
  %37 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %38 = call i32 (i8*, ...) @printf(i8* %37)
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @reset_state_machine(i32 %39)
  br label %97

41:                                               ; preds = %23
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sub i32 %43, %44
  %46 = sub i32 %45, 1
  %47 = call i64 @byte_get(i8* %42, i32 %46)
  store i64 %47, i64* %10, align 8
  %48 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i64, i64* %10, align 8
  %50 = call i32 (i8*, ...) @printf(i8* %48, i64 %49)
  %51 = load i64, i64* %10, align 8
  store i64 %51, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state_machine_regs, i32 0, i32 0), align 8
  br label %97

52:                                               ; preds = %23
  %53 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %54 = call i32 (i8*, ...) @printf(i8* %53)
  %55 = call i8* @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %56 = call i32 (i8*, ...) @printf(i8* %55)
  %57 = call i8* @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state_machine_regs, i32 0, i32 1), align 8
  %59 = add i32 %58, 1
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state_machine_regs, i32 0, i32 1), align 8
  %60 = call i32 (i8*, ...) @printf(i8* %57, i32 %59)
  %61 = load i8*, i8** %4, align 8
  store i8* %61, i8** %9, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 @strlen(i8* %62)
  %64 = add nsw i32 %63, 1
  %65 = load i8*, i8** %4, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** %4, align 8
  %68 = call i8* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 @read_leb128(i8* %69, i32* %7, i32 0)
  %71 = call i32 (i8*, ...) @printf(i8* %68, i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = load i8*, i8** %4, align 8
  %74 = zext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %4, align 8
  %76 = call i8* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %77 = load i8*, i8** %4, align 8
  %78 = call i32 @read_leb128(i8* %77, i32* %7, i32 0)
  %79 = call i32 (i8*, ...) @printf(i8* %76, i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = load i8*, i8** %4, align 8
  %82 = zext i32 %80 to i64
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8* %83, i8** %4, align 8
  %84 = call i8* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %85 = load i8*, i8** %4, align 8
  %86 = call i32 @read_leb128(i8* %85, i32* %7, i32 0)
  %87 = call i32 (i8*, ...) @printf(i8* %84, i32 %86)
  %88 = call i8* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 (i8*, ...) @printf(i8* %88, i8* %89)
  br label %97

91:                                               ; preds = %23
  %92 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %7, align 4
  %95 = sub i32 %93, %94
  %96 = call i32 (i8*, ...) @printf(i8* %92, i32 %95)
  br label %97

97:                                               ; preds = %91, %52, %41, %36
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %19
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @read_leb128(i8*, i32*, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @reset_state_machine(i32) #1

declare dso_local i64 @byte_get(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
