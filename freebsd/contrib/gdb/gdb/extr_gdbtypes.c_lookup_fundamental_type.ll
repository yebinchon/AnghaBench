; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_lookup_fundamental_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_lookup_fundamental_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.objfile = type { %struct.type**, i32 }

@FT_NUM_MEMBERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"internal error - invalid fundamental type id %d\00", align 1
@n_types = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.type* @lookup_fundamental_type(%struct.objfile* %0, i32 %1) #0 {
  %3 = alloca %struct.objfile*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.type**, align 8
  %6 = alloca i32, align 4
  store %struct.objfile* %0, %struct.objfile** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @FT_NUM_MEMBERS, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9, %2
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %13, %9
  %17 = load %struct.objfile*, %struct.objfile** %3, align 8
  %18 = getelementptr inbounds %struct.objfile, %struct.objfile* %17, i32 0, i32 0
  %19 = load %struct.type**, %struct.type*** %18, align 8
  %20 = icmp eq %struct.type** %19, null
  br i1 %20, label %21, label %44

21:                                               ; preds = %16
  %22 = load i32, i32* @FT_NUM_MEMBERS, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = load %struct.objfile*, %struct.objfile** %3, align 8
  %27 = getelementptr inbounds %struct.objfile, %struct.objfile* %26, i32 0, i32 1
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @obstack_alloc(i32* %27, i32 %28)
  %30 = inttoptr i64 %29 to %struct.type**
  %31 = load %struct.objfile*, %struct.objfile** %3, align 8
  %32 = getelementptr inbounds %struct.objfile, %struct.objfile* %31, i32 0, i32 0
  store %struct.type** %30, %struct.type*** %32, align 8
  %33 = load %struct.objfile*, %struct.objfile** %3, align 8
  %34 = getelementptr inbounds %struct.objfile, %struct.objfile* %33, i32 0, i32 0
  %35 = load %struct.type**, %struct.type*** %34, align 8
  %36 = bitcast %struct.type** %35 to i8*
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @memset(i8* %36, i32 0, i32 %37)
  %39 = load %struct.objfile*, %struct.objfile** %3, align 8
  %40 = load i32, i32* @FT_NUM_MEMBERS, align 4
  %41 = load i32, i32* @n_types, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* @n_types, align 4
  %43 = call i32 @OBJSTAT(%struct.objfile* %39, i32 %42)
  br label %44

44:                                               ; preds = %21, %16
  %45 = load %struct.objfile*, %struct.objfile** %3, align 8
  %46 = getelementptr inbounds %struct.objfile, %struct.objfile* %45, i32 0, i32 0
  %47 = load %struct.type**, %struct.type*** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.type*, %struct.type** %47, i64 %49
  store %struct.type** %50, %struct.type*** %5, align 8
  %51 = load %struct.type**, %struct.type*** %5, align 8
  %52 = load %struct.type*, %struct.type** %51, align 8
  %53 = icmp eq %struct.type* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %44
  %55 = load %struct.objfile*, %struct.objfile** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call %struct.type* @create_fundamental_type(%struct.objfile* %55, i32 %56)
  %58 = load %struct.type**, %struct.type*** %5, align 8
  store %struct.type* %57, %struct.type** %58, align 8
  br label %59

59:                                               ; preds = %54, %44
  %60 = load %struct.type**, %struct.type*** %5, align 8
  %61 = load %struct.type*, %struct.type** %60, align 8
  ret %struct.type* %61
}

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i64 @obstack_alloc(i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @OBJSTAT(%struct.objfile*, i32) #1

declare dso_local %struct.type* @create_fundamental_type(%struct.objfile*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
