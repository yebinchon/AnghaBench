; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-gen.c_print_dis_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-gen.c_print_dis_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disent = type { i32, i32, i32, %struct.disent*, %struct.disent* }

@disinsntable = common dso_local global %struct.disent* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"static const char dis_table[] = {\0A\00", align 1
@insn_list_len = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"0x%02x, \00", align 1
@insn_list = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"\0A};\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"static const struct ia64_dis_names ia64_dis_names[] = {\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"{ 0x%x, %d, %d, %d },\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_dis_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_dis_table() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.disent*, align 8
  %3 = alloca %struct.disent*, align 8
  %4 = load %struct.disent*, %struct.disent** @disinsntable, align 8
  store %struct.disent* %4, %struct.disent** %2, align 8
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %26, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @insn_list_len, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  %11 = load i32, i32* %1, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i32, i32* %1, align 4
  %15 = srem i32 %14, 12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %13, %10
  %20 = load i32*, i32** @insn_list, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %6

29:                                               ; preds = %6
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  br label %32

32:                                               ; preds = %60, %29
  %33 = load %struct.disent*, %struct.disent** %2, align 8
  %34 = icmp ne %struct.disent* %33, null
  br i1 %34, label %35, label %64

35:                                               ; preds = %32
  %36 = load %struct.disent*, %struct.disent** %2, align 8
  store %struct.disent* %36, %struct.disent** %3, align 8
  br label %37

37:                                               ; preds = %40, %35
  %38 = load %struct.disent*, %struct.disent** %3, align 8
  %39 = icmp ne %struct.disent* %38, null
  br i1 %39, label %40, label %60

40:                                               ; preds = %37
  %41 = load %struct.disent*, %struct.disent** %3, align 8
  %42 = getelementptr inbounds %struct.disent, %struct.disent* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.disent*, %struct.disent** %3, align 8
  %45 = getelementptr inbounds %struct.disent, %struct.disent* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.disent*, %struct.disent** %3, align 8
  %48 = getelementptr inbounds %struct.disent, %struct.disent* %47, i32 0, i32 4
  %49 = load %struct.disent*, %struct.disent** %48, align 8
  %50 = icmp ne %struct.disent* %49, null
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  %53 = load %struct.disent*, %struct.disent** %3, align 8
  %54 = getelementptr inbounds %struct.disent, %struct.disent* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %43, i32 %46, i32 %52, i32 %55)
  %57 = load %struct.disent*, %struct.disent** %3, align 8
  %58 = getelementptr inbounds %struct.disent, %struct.disent* %57, i32 0, i32 4
  %59 = load %struct.disent*, %struct.disent** %58, align 8
  store %struct.disent* %59, %struct.disent** %3, align 8
  br label %37

60:                                               ; preds = %37
  %61 = load %struct.disent*, %struct.disent** %2, align 8
  %62 = getelementptr inbounds %struct.disent, %struct.disent* %61, i32 0, i32 3
  %63 = load %struct.disent*, %struct.disent** %62, align 8
  store %struct.disent* %63, %struct.disent** %2, align 8
  br label %32

64:                                               ; preds = %32
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
