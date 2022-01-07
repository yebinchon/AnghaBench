; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_fix_static_member_physnames.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_fix_static_member_physnames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.objfile = type { i32 }

@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"::\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, i8*, %struct.objfile*)* @fix_static_member_physnames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fix_static_member_physnames(%struct.type* %0, i8* %1, %struct.objfile* %2) #0 {
  %4 = alloca %struct.type*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.objfile*, align 8
  %7 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.objfile* %2, %struct.objfile** %6, align 8
  %8 = load %struct.type*, %struct.type** %4, align 8
  %9 = call i64 @TYPE_CODE(%struct.type* %8)
  %10 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %69

13:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %66, %13
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.type*, %struct.type** %4, align 8
  %17 = call i32 @TYPE_NFIELDS(%struct.type* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %69

19:                                               ; preds = %14
  %20 = load %struct.type*, %struct.type** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @TYPE_FIELD_STATIC(%struct.type* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %65

24:                                               ; preds = %19
  %25 = load %struct.type*, %struct.type** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @TYPE_FIELD_STATIC_PHYSNAME(%struct.type* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %69

30:                                               ; preds = %24
  %31 = load %struct.type*, %struct.type** %4, align 8
  %32 = call i32* @TYPE_FIELDS(%struct.type* %31)
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.objfile*, %struct.objfile** %6, align 8
  %38 = getelementptr inbounds %struct.objfile, %struct.objfile* %37, i32 0, i32 0
  %39 = load i8*, i8** %5, align 8
  %40 = call i64 @strlen(i8* %39)
  %41 = load %struct.type*, %struct.type** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i8* @TYPE_FIELD_NAME(%struct.type* %41, i32 %42)
  %44 = call i64 @strlen(i8* %43)
  %45 = add nsw i64 %40, %44
  %46 = add nsw i64 %45, 3
  %47 = call i32 @obstack_alloc(i32* %38, i64 %46)
  %48 = call i32 @SET_FIELD_PHYSNAME(i32 %36, i32 %47)
  %49 = load %struct.type*, %struct.type** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @TYPE_FIELD_STATIC_PHYSNAME(%struct.type* %49, i32 %50)
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @strcpy(i64 %51, i8* %52)
  %54 = load %struct.type*, %struct.type** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i64 @TYPE_FIELD_STATIC_PHYSNAME(%struct.type* %54, i32 %55)
  %57 = call i32 @strcat(i64 %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.type*, %struct.type** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i64 @TYPE_FIELD_STATIC_PHYSNAME(%struct.type* %58, i32 %59)
  %61 = load %struct.type*, %struct.type** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i8* @TYPE_FIELD_NAME(%struct.type* %61, i32 %62)
  %64 = call i32 @strcat(i64 %60, i8* %63)
  br label %65

65:                                               ; preds = %30, %19
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %14

69:                                               ; preds = %12, %29, %14
  ret void
}

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i64 @TYPE_FIELD_STATIC(%struct.type*, i32) #1

declare dso_local i64 @TYPE_FIELD_STATIC_PHYSNAME(%struct.type*, i32) #1

declare dso_local i32 @SET_FIELD_PHYSNAME(i32, i32) #1

declare dso_local i32* @TYPE_FIELDS(%struct.type*) #1

declare dso_local i32 @obstack_alloc(i32*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @TYPE_FIELD_NAME(%struct.type*, i32) #1

declare dso_local i32 @strcpy(i64, i8*) #1

declare dso_local i32 @strcat(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
