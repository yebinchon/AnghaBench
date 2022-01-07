; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_gnu_xfer_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_gnu_xfer_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.mem_attrib = type { i32 }
%struct.target_ops = type { i32 }

@current_inferior = common dso_local global %struct.TYPE_5__* null, align 8
@MACH_PORT_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"%s %p[%d] %s %p\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"writing\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"reading\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"<--\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"-->\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32, i32, %struct.mem_attrib*, %struct.target_ops*)* @gnu_xfer_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gnu_xfer_memory(i64 %0, i8* %1, i32 %2, i32 %3, %struct.mem_attrib* %4, %struct.target_ops* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mem_attrib*, align 8
  %13 = alloca %struct.target_ops*, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.mem_attrib* %4, %struct.mem_attrib** %12, align 8
  store %struct.target_ops* %5, %struct.target_ops** %13, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_inferior, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %6
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_inferior, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_inferior, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  br label %29

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28, %22
  %30 = phi i64 [ %27, %22 ], [ 0, %28 ]
  br label %32

31:                                               ; preds = %6
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i64 [ %30, %29 ], [ 0, %31 ]
  store i64 %33, i64* %14, align 8
  %34 = load i64, i64* %14, align 8
  %35 = load i64, i64* @MACH_PORT_NULL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %67

38:                                               ; preds = %32
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_inferior, align 8
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %44 = load i64, i64* %8, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @inf_debug(%struct.TYPE_5__* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %43, i8* %45, i32 %46, i8* %50, i8* %51)
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %38
  %56 = load i64, i64* %14, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @gnu_write_inferior(i64 %56, i64 %57, i8* %58, i32 %59)
  store i32 %60, i32* %7, align 4
  br label %67

61:                                               ; preds = %38
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @gnu_read_inferior(i64 %62, i64 %63, i8* %64, i32 %65)
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %61, %55, %37
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @inf_debug(%struct.TYPE_5__*, i8*, i8*, i8*, i32, i8*, i8*) #1

declare dso_local i32 @gnu_write_inferior(i64, i64, i8*, i32) #1

declare dso_local i32 @gnu_read_inferior(i64, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
