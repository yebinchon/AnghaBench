; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_libelf_allocate.c__libelf_allocate_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_libelf_allocate.c__libelf_allocate_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Libelf_Data = type { i32* }

@RESOURCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._Libelf_Data* @_libelf_allocate_data(i32* %0) #0 {
  %2 = alloca %struct._Libelf_Data*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct._Libelf_Data*, align 8
  store i32* %0, i32** %3, align 8
  %5 = call %struct._Libelf_Data* @calloc(i64 1, i32 8)
  store %struct._Libelf_Data* %5, %struct._Libelf_Data** %4, align 8
  %6 = icmp eq %struct._Libelf_Data* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @RESOURCE, align 4
  %9 = call i32 @LIBELF_SET_ERROR(i32 %8, i32 0)
  store %struct._Libelf_Data* null, %struct._Libelf_Data** %2, align 8
  br label %15

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = load %struct._Libelf_Data*, %struct._Libelf_Data** %4, align 8
  %13 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %12, i32 0, i32 0
  store i32* %11, i32** %13, align 8
  %14 = load %struct._Libelf_Data*, %struct._Libelf_Data** %4, align 8
  store %struct._Libelf_Data* %14, %struct._Libelf_Data** %2, align 8
  br label %15

15:                                               ; preds = %10, %7
  %16 = load %struct._Libelf_Data*, %struct._Libelf_Data** %2, align 8
  ret %struct._Libelf_Data* %16
}

declare dso_local %struct._Libelf_Data* @calloc(i64, i32) #1

declare dso_local i32 @LIBELF_SET_ERROR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
