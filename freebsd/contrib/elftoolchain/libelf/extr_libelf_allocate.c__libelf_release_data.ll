; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_libelf_allocate.c__libelf_release_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_libelf_allocate.c__libelf_release_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Libelf_Data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct._Libelf_Data* }

@LIBELF_F_DATA_MALLOCED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._Libelf_Data* @_libelf_release_data(%struct._Libelf_Data* %0) #0 {
  %2 = alloca %struct._Libelf_Data*, align 8
  store %struct._Libelf_Data* %0, %struct._Libelf_Data** %2, align 8
  %3 = load %struct._Libelf_Data*, %struct._Libelf_Data** %2, align 8
  %4 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @LIBELF_F_DATA_MALLOCED, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct._Libelf_Data*, %struct._Libelf_Data** %2, align 8
  %11 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct._Libelf_Data*, %struct._Libelf_Data** %12, align 8
  %14 = call i32 @free(%struct._Libelf_Data* %13)
  br label %15

15:                                               ; preds = %9, %1
  %16 = load %struct._Libelf_Data*, %struct._Libelf_Data** %2, align 8
  %17 = call i32 @free(%struct._Libelf_Data* %16)
  ret %struct._Libelf_Data* null
}

declare dso_local i32 @free(%struct._Libelf_Data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
