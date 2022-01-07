; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_pe_dll_add_excludes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_pe_dll_add_excludes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exclude_list_struct = type { i32, %struct.exclude_list_struct*, i8* }

@.str = private unnamed_addr constant [3 x i8] c",:\00", align 1
@excludes = common dso_local global %struct.exclude_list_struct* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pe_dll_add_excludes(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.exclude_list_struct*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call i8* @xstrdup(i8* %8)
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i8* @strtok(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** %6, align 8
  br label %12

12:                                               ; preds = %36, %2
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %38

15:                                               ; preds = %12
  %16 = call i8* @xmalloc(i32 24)
  %17 = bitcast i8* %16 to %struct.exclude_list_struct*
  store %struct.exclude_list_struct* %17, %struct.exclude_list_struct** %7, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = add nsw i32 %19, 1
  %21 = call i8* @xmalloc(i32 %20)
  %22 = load %struct.exclude_list_struct*, %struct.exclude_list_struct** %7, align 8
  %23 = getelementptr inbounds %struct.exclude_list_struct, %struct.exclude_list_struct* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load %struct.exclude_list_struct*, %struct.exclude_list_struct** %7, align 8
  %25 = getelementptr inbounds %struct.exclude_list_struct, %struct.exclude_list_struct* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @strcpy(i8* %26, i8* %27)
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.exclude_list_struct*, %struct.exclude_list_struct** %7, align 8
  %31 = getelementptr inbounds %struct.exclude_list_struct, %struct.exclude_list_struct* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.exclude_list_struct*, %struct.exclude_list_struct** @excludes, align 8
  %33 = load %struct.exclude_list_struct*, %struct.exclude_list_struct** %7, align 8
  %34 = getelementptr inbounds %struct.exclude_list_struct, %struct.exclude_list_struct* %33, i32 0, i32 1
  store %struct.exclude_list_struct* %32, %struct.exclude_list_struct** %34, align 8
  %35 = load %struct.exclude_list_struct*, %struct.exclude_list_struct** %7, align 8
  store %struct.exclude_list_struct* %35, %struct.exclude_list_struct** @excludes, align 8
  br label %36

36:                                               ; preds = %15
  %37 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %37, i8** %6, align 8
  br label %12

38:                                               ; preds = %12
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @free(i8* %39)
  ret void
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
