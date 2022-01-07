; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_stabs.c__bfd_write_stab_strings.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_stabs.c__bfd_write_stab_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_info = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@TRUE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_write_stab_strings(i32* %0, %struct.stab_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.stab_info*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.stab_info* %1, %struct.stab_info** %5, align 8
  %6 = load %struct.stab_info*, %struct.stab_info** %5, align 8
  %7 = getelementptr inbounds %struct.stab_info, %struct.stab_info* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = call i64 @bfd_is_abs_section(%struct.TYPE_4__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @TRUE, align 4
  store i32 %14, i32* %3, align 4
  br label %74

15:                                               ; preds = %2
  %16 = load %struct.stab_info*, %struct.stab_info** %5, align 8
  %17 = getelementptr inbounds %struct.stab_info, %struct.stab_info* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.stab_info*, %struct.stab_info** %5, align 8
  %22 = getelementptr inbounds %struct.stab_info, %struct.stab_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @_bfd_stringtab_size(i32 %23)
  %25 = add nsw i64 %20, %24
  %26 = load %struct.stab_info*, %struct.stab_info** %5, align 8
  %27 = getelementptr inbounds %struct.stab_info, %struct.stab_info* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sle i64 %25, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @BFD_ASSERT(i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.stab_info*, %struct.stab_info** %5, align 8
  %38 = getelementptr inbounds %struct.stab_info, %struct.stab_info* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.stab_info*, %struct.stab_info** %5, align 8
  %45 = getelementptr inbounds %struct.stab_info, %struct.stab_info* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %43, %48
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* @SEEK_SET, align 4
  %52 = call i64 @bfd_seek(i32* %36, i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %15
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %3, align 4
  br label %74

56:                                               ; preds = %15
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.stab_info*, %struct.stab_info** %5, align 8
  %59 = getelementptr inbounds %struct.stab_info, %struct.stab_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @_bfd_stringtab_emit(i32* %57, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %3, align 4
  br label %74

65:                                               ; preds = %56
  %66 = load %struct.stab_info*, %struct.stab_info** %5, align 8
  %67 = getelementptr inbounds %struct.stab_info, %struct.stab_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @_bfd_stringtab_free(i32 %68)
  %70 = load %struct.stab_info*, %struct.stab_info** %5, align 8
  %71 = getelementptr inbounds %struct.stab_info, %struct.stab_info* %70, i32 0, i32 0
  %72 = call i32 @bfd_hash_table_free(i32* %71)
  %73 = load i32, i32* @TRUE, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %65, %63, %54, %13
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @bfd_is_abs_section(%struct.TYPE_4__*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i64 @_bfd_stringtab_size(i32) #1

declare dso_local i64 @bfd_seek(i32*, i32, i32) #1

declare dso_local i32 @_bfd_stringtab_emit(i32*, i32) #1

declare dso_local i32 @_bfd_stringtab_free(i32) #1

declare dso_local i32 @bfd_hash_table_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
