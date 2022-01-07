; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_end_struct_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_end_struct_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { i8*, %struct.TYPE_4__*, %struct.ieee_buflist, %struct.ieee_buflist }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ieee_buflist, i32, i64 }
%struct.ieee_buflist = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@ieee_bb_record_enum = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ieee_end_struct_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_end_struct_type(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ieee_handle*, align 8
  %5 = alloca %struct.ieee_buflist*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.ieee_handle*
  store %struct.ieee_handle* %7, %struct.ieee_handle** %4, align 8
  %8 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %9 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %14 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i64 @ieee_buffer_emptyp(%struct.ieee_buflist* %17)
  %19 = icmp ne i64 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %12, %1
  %22 = phi i1 [ false, %1 ], [ %20, %12 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %26 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %2, align 4
  br label %138

34:                                               ; preds = %21
  %35 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %36 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %77, label %42

42:                                               ; preds = %34
  %43 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %44 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %43, i32 0, i32 3
  %45 = call i64 @ieee_buffer_emptyp(%struct.ieee_buflist* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %42
  %48 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %49 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %50 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %49, i32 0, i32 3
  %51 = call i32 @ieee_change_buffer(%struct.ieee_handle* %48, %struct.ieee_buflist* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %47
  %54 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %55 = load i64, i64* @ieee_bb_record_enum, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @ieee_write_byte(%struct.ieee_handle* %54, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %61 = call i32 @ieee_write_byte(%struct.ieee_handle* %60, i32 2)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %65 = call i32 @ieee_write_number(%struct.ieee_handle* %64, i32 0)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %69 = call i32 @ieee_write_id(%struct.ieee_handle* %68, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %67, %63, %59, %53, %47
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %2, align 4
  br label %138

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %42
  %75 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %76 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %75, i32 0, i32 3
  store %struct.ieee_buflist* %76, %struct.ieee_buflist** %5, align 8
  br label %115

77:                                               ; preds = %34
  %78 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %79 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %78, i32 0, i32 2
  %80 = call i64 @ieee_buffer_emptyp(%struct.ieee_buflist* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %112

82:                                               ; preds = %77
  %83 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %84 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %85 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %84, i32 0, i32 2
  %86 = call i32 @ieee_change_buffer(%struct.ieee_handle* %83, %struct.ieee_buflist* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %109

88:                                               ; preds = %82
  %89 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %90 = load i64, i64* @ieee_bb_record_enum, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @ieee_write_byte(%struct.ieee_handle* %89, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %88
  %95 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %96 = call i32 @ieee_write_byte(%struct.ieee_handle* %95, i32 1)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %94
  %99 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %100 = call i32 @ieee_write_number(%struct.ieee_handle* %99, i32 0)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %104 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %105 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @ieee_write_id(%struct.ieee_handle* %103, i8* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %102, %98, %94, %88, %82
  %110 = load i32, i32* @FALSE, align 4
  store i32 %110, i32* %2, align 4
  br label %138

111:                                              ; preds = %102
  br label %112

112:                                              ; preds = %111, %77
  %113 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %114 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %113, i32 0, i32 2
  store %struct.ieee_buflist* %114, %struct.ieee_buflist** %5, align 8
  br label %115

115:                                              ; preds = %112, %74
  %116 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %117 = load %struct.ieee_buflist*, %struct.ieee_buflist** %5, align 8
  %118 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %119 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %118, i32 0, i32 1
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = call i32 @ieee_append_buffer(%struct.ieee_handle* %116, %struct.ieee_buflist* %117, %struct.ieee_buflist* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %115
  %126 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %127 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %128 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %127, i32 0, i32 1
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = call i32 @ieee_init_buffer(%struct.ieee_handle* %126, %struct.ieee_buflist* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %125, %115
  %135 = load i32, i32* @FALSE, align 4
  store i32 %135, i32* %2, align 4
  br label %138

136:                                              ; preds = %125
  %137 = load i32, i32* @TRUE, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %136, %134, %109, %71, %32
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ieee_buffer_emptyp(%struct.ieee_buflist*) #1

declare dso_local i32 @ieee_change_buffer(%struct.ieee_handle*, %struct.ieee_buflist*) #1

declare dso_local i32 @ieee_write_byte(%struct.ieee_handle*, i32) #1

declare dso_local i32 @ieee_write_number(%struct.ieee_handle*, i32) #1

declare dso_local i32 @ieee_write_id(%struct.ieee_handle*, i8*) #1

declare dso_local i32 @ieee_append_buffer(%struct.ieee_handle*, %struct.ieee_buflist*, %struct.ieee_buflist*) #1

declare dso_local i32 @ieee_init_buffer(%struct.ieee_handle*, %struct.ieee_buflist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
