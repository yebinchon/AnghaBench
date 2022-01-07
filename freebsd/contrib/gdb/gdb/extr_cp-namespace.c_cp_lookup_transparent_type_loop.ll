; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-namespace.c_cp_lookup_transparent_type_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-namespace.c_cp_lookup_transparent_type_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"::\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (i8*, i8*, i32)* @cp_lookup_transparent_type_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @cp_lookup_transparent_type_loop(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.type*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.type*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = call i32 @cp_find_first_component(i8* %15)
  %17 = add nsw i32 %11, %16
  store i32 %17, i32* %8, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 58
  br i1 %24, label %25, label %36

25:                                               ; preds = %3
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 2
  %30 = call %struct.type* @cp_lookup_transparent_type_loop(i8* %26, i8* %27, i32 %29)
  store %struct.type* %30, %struct.type** %10, align 8
  %31 = load %struct.type*, %struct.type** %10, align 8
  %32 = icmp ne %struct.type* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load %struct.type*, %struct.type** %10, align 8
  store %struct.type* %34, %struct.type** %4, align 8
  br label %63

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35, %3
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = load i8*, i8** %5, align 8
  %41 = call i64 @strlen(i8* %40)
  %42 = add nsw i64 %39, %41
  %43 = add nsw i64 %42, 1
  %44 = call i8* @alloca(i64 %43)
  store i8* %44, i8** %9, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @strncpy(i8* %45, i8* %46, i32 %47)
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = call i32 @strncpy(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @strcpy(i8* %58, i8* %59)
  %61 = load i8*, i8** %9, align 8
  %62 = call %struct.type* @basic_lookup_transparent_type(i8* %61)
  store %struct.type* %62, %struct.type** %4, align 8
  br label %63

63:                                               ; preds = %36, %33
  %64 = load %struct.type*, %struct.type** %4, align 8
  ret %struct.type* %64
}

declare dso_local i32 @cp_find_first_component(i8*) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local %struct.type* @basic_lookup_transparent_type(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
