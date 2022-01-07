; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_pop_type_used.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_pop_type_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { i8*, %struct.ieee_type_stack*, %struct.ieee_buflist, %struct.ieee_buflist }
%struct.ieee_type_stack = type { %struct.ieee_type_stack*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ieee_buflist, i64 }
%struct.ieee_buflist = type { i32 }

@ieee_bb_record_enum = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee_handle*, i64)* @ieee_pop_type_used to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_pop_type_used(%struct.ieee_handle* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee_handle*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ieee_type_stack*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee_buflist*, align 8
  store %struct.ieee_handle* %0, %struct.ieee_handle** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %10 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %9, i32 0, i32 1
  %11 = load %struct.ieee_type_stack*, %struct.ieee_type_stack** %10, align 8
  store %struct.ieee_type_stack* %11, %struct.ieee_type_stack** %6, align 8
  %12 = load %struct.ieee_type_stack*, %struct.ieee_type_stack** %6, align 8
  %13 = icmp ne %struct.ieee_type_stack* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %114

18:                                               ; preds = %2
  %19 = load %struct.ieee_type_stack*, %struct.ieee_type_stack** %6, align 8
  %20 = getelementptr inbounds %struct.ieee_type_stack, %struct.ieee_type_stack* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = call i64 @ieee_buffer_emptyp(%struct.ieee_buflist* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %114, label %24

24:                                               ; preds = %18
  %25 = load %struct.ieee_type_stack*, %struct.ieee_type_stack** %6, align 8
  %26 = getelementptr inbounds %struct.ieee_type_stack, %struct.ieee_type_stack* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %68

30:                                               ; preds = %24
  %31 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %32 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %31, i32 0, i32 3
  %33 = call i64 @ieee_buffer_emptyp(%struct.ieee_buflist* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %65

35:                                               ; preds = %30
  %36 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %37 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %38 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %37, i32 0, i32 3
  %39 = call i32 @ieee_change_buffer(%struct.ieee_handle* %36, %struct.ieee_buflist* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %35
  %42 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %43 = load i64, i64* @ieee_bb_record_enum, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @ieee_write_byte(%struct.ieee_handle* %42, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  %48 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %49 = call i32 @ieee_write_byte(%struct.ieee_handle* %48, i32 1)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %53 = call i32 @ieee_write_number(%struct.ieee_handle* %52, i32 0)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %57 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %58 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @ieee_write_id(%struct.ieee_handle* %56, i8* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %55, %51, %47, %41, %35
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %3, align 4
  br label %127

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %30
  %66 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %67 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %66, i32 0, i32 3
  store %struct.ieee_buflist* %67, %struct.ieee_buflist** %8, align 8
  br label %103

68:                                               ; preds = %24
  %69 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %70 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %69, i32 0, i32 2
  %71 = call i64 @ieee_buffer_emptyp(%struct.ieee_buflist* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %100

73:                                               ; preds = %68
  %74 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %75 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %76 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %75, i32 0, i32 2
  %77 = call i32 @ieee_change_buffer(%struct.ieee_handle* %74, %struct.ieee_buflist* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %73
  %80 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %81 = load i64, i64* @ieee_bb_record_enum, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @ieee_write_byte(%struct.ieee_handle* %80, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %79
  %86 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %87 = call i32 @ieee_write_byte(%struct.ieee_handle* %86, i32 2)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %91 = call i32 @ieee_write_number(%struct.ieee_handle* %90, i32 0)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %95 = call i32 @ieee_write_id(%struct.ieee_handle* %94, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %93, %89, %85, %79, %73
  %98 = load i32, i32* @FALSE, align 4
  store i32 %98, i32* %3, align 4
  br label %127

99:                                               ; preds = %93
  br label %100

100:                                              ; preds = %99, %68
  %101 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %102 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %101, i32 0, i32 2
  store %struct.ieee_buflist* %102, %struct.ieee_buflist** %8, align 8
  br label %103

103:                                              ; preds = %100, %65
  %104 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %105 = load %struct.ieee_buflist*, %struct.ieee_buflist** %8, align 8
  %106 = load %struct.ieee_type_stack*, %struct.ieee_type_stack** %6, align 8
  %107 = getelementptr inbounds %struct.ieee_type_stack, %struct.ieee_type_stack* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = call i32 @ieee_append_buffer(%struct.ieee_handle* %104, %struct.ieee_buflist* %105, %struct.ieee_buflist* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %103
  %112 = load i32, i32* @FALSE, align 4
  store i32 %112, i32* %3, align 4
  br label %127

113:                                              ; preds = %103
  br label %114

114:                                              ; preds = %113, %18, %2
  %115 = load %struct.ieee_type_stack*, %struct.ieee_type_stack** %6, align 8
  %116 = getelementptr inbounds %struct.ieee_type_stack, %struct.ieee_type_stack* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %7, align 4
  %119 = load %struct.ieee_type_stack*, %struct.ieee_type_stack** %6, align 8
  %120 = getelementptr inbounds %struct.ieee_type_stack, %struct.ieee_type_stack* %119, i32 0, i32 0
  %121 = load %struct.ieee_type_stack*, %struct.ieee_type_stack** %120, align 8
  %122 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %123 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %122, i32 0, i32 1
  store %struct.ieee_type_stack* %121, %struct.ieee_type_stack** %123, align 8
  %124 = load %struct.ieee_type_stack*, %struct.ieee_type_stack** %6, align 8
  %125 = call i32 @free(%struct.ieee_type_stack* %124)
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %114, %111, %97, %62
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ieee_buffer_emptyp(%struct.ieee_buflist*) #1

declare dso_local i32 @ieee_change_buffer(%struct.ieee_handle*, %struct.ieee_buflist*) #1

declare dso_local i32 @ieee_write_byte(%struct.ieee_handle*, i32) #1

declare dso_local i32 @ieee_write_number(%struct.ieee_handle*, i32) #1

declare dso_local i32 @ieee_write_id(%struct.ieee_handle*, i8*) #1

declare dso_local i32 @ieee_append_buffer(%struct.ieee_handle*, %struct.ieee_buflist*, %struct.ieee_buflist*) #1

declare dso_local i32 @free(%struct.ieee_type_stack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
