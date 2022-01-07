; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_collect2.c_add_to_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_collect2.c_add_to_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.head = type { i32, %struct.id*, %struct.id* }
%struct.id = type { i64, %struct.id*, i32 }

@sequence_number = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.head*, i8*)* @add_to_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_list(%struct.head* %0, i8* %1) #0 {
  %3 = alloca %struct.head*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.id*, align 8
  %6 = alloca %struct.id*, align 8
  store %struct.head* %0, %struct.head** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @strlen(i8* %7)
  %9 = add i64 24, %8
  %10 = call %struct.id* @xcalloc(i64 %9, i32 1)
  store %struct.id* %10, %struct.id** %5, align 8
  %11 = load %struct.id*, %struct.id** %5, align 8
  %12 = getelementptr inbounds %struct.id, %struct.id* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @strcpy(i32 %13, i8* %14)
  %16 = load %struct.head*, %struct.head** %3, align 8
  %17 = getelementptr inbounds %struct.head, %struct.head* %16, i32 0, i32 2
  %18 = load %struct.id*, %struct.id** %17, align 8
  %19 = icmp ne %struct.id* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.id*, %struct.id** %5, align 8
  %22 = load %struct.head*, %struct.head** %3, align 8
  %23 = getelementptr inbounds %struct.head, %struct.head* %22, i32 0, i32 1
  %24 = load %struct.id*, %struct.id** %23, align 8
  %25 = getelementptr inbounds %struct.id, %struct.id* %24, i32 0, i32 1
  store %struct.id* %21, %struct.id** %25, align 8
  br label %30

26:                                               ; preds = %2
  %27 = load %struct.id*, %struct.id** %5, align 8
  %28 = load %struct.head*, %struct.head** %3, align 8
  %29 = getelementptr inbounds %struct.head, %struct.head* %28, i32 0, i32 2
  store %struct.id* %27, %struct.id** %29, align 8
  br label %30

30:                                               ; preds = %26, %20
  %31 = load %struct.head*, %struct.head** %3, align 8
  %32 = getelementptr inbounds %struct.head, %struct.head* %31, i32 0, i32 2
  %33 = load %struct.id*, %struct.id** %32, align 8
  store %struct.id* %33, %struct.id** %6, align 8
  br label %34

34:                                               ; preds = %42, %30
  %35 = load i8*, i8** %4, align 8
  %36 = load %struct.id*, %struct.id** %6, align 8
  %37 = getelementptr inbounds %struct.id, %struct.id* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @strcmp(i8* %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.id*, %struct.id** %6, align 8
  %44 = getelementptr inbounds %struct.id, %struct.id* %43, i32 0, i32 1
  %45 = load %struct.id*, %struct.id** %44, align 8
  store %struct.id* %45, %struct.id** %6, align 8
  br label %34

46:                                               ; preds = %34
  %47 = load %struct.id*, %struct.id** %6, align 8
  %48 = load %struct.id*, %struct.id** %5, align 8
  %49 = icmp ne %struct.id* %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load %struct.head*, %struct.head** %3, align 8
  %52 = getelementptr inbounds %struct.head, %struct.head* %51, i32 0, i32 1
  %53 = load %struct.id*, %struct.id** %52, align 8
  %54 = getelementptr inbounds %struct.id, %struct.id* %53, i32 0, i32 1
  store %struct.id* null, %struct.id** %54, align 8
  %55 = load %struct.id*, %struct.id** %5, align 8
  %56 = call i32 @free(%struct.id* %55)
  br label %69

57:                                               ; preds = %46
  %58 = load i64, i64* @sequence_number, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* @sequence_number, align 8
  %60 = load %struct.id*, %struct.id** %5, align 8
  %61 = getelementptr inbounds %struct.id, %struct.id* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.id*, %struct.id** %5, align 8
  %63 = load %struct.head*, %struct.head** %3, align 8
  %64 = getelementptr inbounds %struct.head, %struct.head* %63, i32 0, i32 1
  store %struct.id* %62, %struct.id** %64, align 8
  %65 = load %struct.head*, %struct.head** %3, align 8
  %66 = getelementptr inbounds %struct.head, %struct.head* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %57, %50
  ret void
}

declare dso_local %struct.id* @xcalloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @free(%struct.id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
