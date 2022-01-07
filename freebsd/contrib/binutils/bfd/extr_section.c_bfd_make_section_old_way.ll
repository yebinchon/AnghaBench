; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_section.c_bfd_make_section_old_way.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_section.c_bfd_make_section_old_way.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8* }
%struct.TYPE_14__ = type { i32, i64 }
%struct.section_hash_entry = type { %struct.TYPE_15__ }

@bfd_error_invalid_operation = common dso_local global i32 0, align 4
@BFD_ABS_SECTION_NAME = common dso_local global i32 0, align 4
@bfd_abs_section_ptr = common dso_local global %struct.TYPE_15__* null, align 8
@BFD_COM_SECTION_NAME = common dso_local global i32 0, align 4
@bfd_com_section_ptr = common dso_local global %struct.TYPE_15__* null, align 8
@BFD_UND_SECTION_NAME = common dso_local global i32 0, align 4
@bfd_und_section_ptr = common dso_local global %struct.TYPE_15__* null, align 8
@BFD_IND_SECTION_NAME = common dso_local global i32 0, align 4
@bfd_ind_section_ptr = common dso_local global %struct.TYPE_15__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@_new_section_hook = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @bfd_make_section_old_way(%struct.TYPE_14__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.section_hash_entry*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @bfd_error_invalid_operation, align 4
  %14 = call i32 @bfd_set_error(i32 %13)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  br label %83

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* @BFD_ABS_SECTION_NAME, align 4
  %18 = call i64 @strcmp(i8* %16, i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** @bfd_abs_section_ptr, align 8
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %6, align 8
  br label %72

22:                                               ; preds = %15
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* @BFD_COM_SECTION_NAME, align 4
  %25 = call i64 @strcmp(i8* %23, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** @bfd_com_section_ptr, align 8
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %6, align 8
  br label %71

29:                                               ; preds = %22
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @BFD_UND_SECTION_NAME, align 4
  %32 = call i64 @strcmp(i8* %30, i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** @bfd_und_section_ptr, align 8
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %6, align 8
  br label %70

36:                                               ; preds = %29
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* @BFD_IND_SECTION_NAME, align 4
  %39 = call i64 @strcmp(i8* %37, i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** @bfd_ind_section_ptr, align 8
  store %struct.TYPE_15__* %42, %struct.TYPE_15__** %6, align 8
  br label %69

43:                                               ; preds = %36
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* @TRUE, align 4
  %48 = load i32, i32* @FALSE, align 4
  %49 = call %struct.section_hash_entry* @section_hash_lookup(i32* %45, i8* %46, i32 %47, i32 %48)
  store %struct.section_hash_entry* %49, %struct.section_hash_entry** %7, align 8
  %50 = load %struct.section_hash_entry*, %struct.section_hash_entry** %7, align 8
  %51 = icmp eq %struct.section_hash_entry* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  br label %83

53:                                               ; preds = %43
  %54 = load %struct.section_hash_entry*, %struct.section_hash_entry** %7, align 8
  %55 = getelementptr inbounds %struct.section_hash_entry, %struct.section_hash_entry* %54, i32 0, i32 0
  store %struct.TYPE_15__* %55, %struct.TYPE_15__** %6, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_15__* %61, %struct.TYPE_15__** %3, align 8
  br label %83

62:                                               ; preds = %53
  %63 = load i8*, i8** %5, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %68 = call %struct.TYPE_15__* @bfd_section_init(%struct.TYPE_14__* %66, %struct.TYPE_15__* %67)
  store %struct.TYPE_15__* %68, %struct.TYPE_15__** %3, align 8
  br label %83

69:                                               ; preds = %41
  br label %70

70:                                               ; preds = %69, %34
  br label %71

71:                                               ; preds = %70, %27
  br label %72

72:                                               ; preds = %71, %20
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %74 = load i32, i32* @_new_section_hook, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %77 = bitcast %struct.TYPE_15__* %76 to %struct.TYPE_14__*
  %78 = call i32 @BFD_SEND(%struct.TYPE_14__* %73, i32 %74, %struct.TYPE_14__* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %72
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  br label %83

81:                                               ; preds = %72
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_15__* %82, %struct.TYPE_15__** %3, align 8
  br label %83

83:                                               ; preds = %81, %80, %62, %60, %52, %12
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  ret %struct.TYPE_15__* %84
}

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local %struct.section_hash_entry* @section_hash_lookup(i32*, i8*, i32, i32) #1

declare dso_local %struct.TYPE_15__* @bfd_section_init(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @BFD_SEND(%struct.TYPE_14__*, i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
