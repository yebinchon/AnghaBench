; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_write_undefined_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_write_undefined_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_name_type_hash_entry = type { %struct.ieee_name_type* }
%struct.ieee_name_type = type { i32, %struct.TYPE_2__, %struct.ieee_name_type* }
%struct.TYPE_2__ = type { i8*, i8 }
%struct.ieee_handle = type { i32, i8*, i32 }

@DEBUG_KIND_ILLEGAL = common dso_local global i32 0, align 4
@ieee_bb_record_enum = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@ieee_nn_record = common dso_local global i64 0, align 8
@ieee_ty_record_enum = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ieee_name_type_hash_entry*, i8*)* @ieee_write_undefined_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ieee_write_undefined_tag(%struct.ieee_name_type_hash_entry* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ieee_name_type_hash_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ieee_handle*, align 8
  %7 = alloca %struct.ieee_name_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.ieee_name_type_hash_entry* %0, %struct.ieee_name_type_hash_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.ieee_handle*
  store %struct.ieee_handle* %11, %struct.ieee_handle** %6, align 8
  %12 = load %struct.ieee_name_type_hash_entry*, %struct.ieee_name_type_hash_entry** %4, align 8
  %13 = getelementptr inbounds %struct.ieee_name_type_hash_entry, %struct.ieee_name_type_hash_entry* %12, i32 0, i32 0
  %14 = load %struct.ieee_name_type*, %struct.ieee_name_type** %13, align 8
  store %struct.ieee_name_type* %14, %struct.ieee_name_type** %7, align 8
  br label %15

15:                                               ; preds = %152, %2
  %16 = load %struct.ieee_name_type*, %struct.ieee_name_type** %7, align 8
  %17 = icmp ne %struct.ieee_name_type* %16, null
  br i1 %17, label %18, label %156

18:                                               ; preds = %15
  %19 = load %struct.ieee_name_type*, %struct.ieee_name_type** %7, align 8
  %20 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @DEBUG_KIND_ILLEGAL, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %152

25:                                               ; preds = %18
  %26 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %27 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %26, i32 0, i32 2
  %28 = call i64 @ieee_buffer_emptyp(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %25
  %31 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %32 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %33 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %32, i32 0, i32 2
  %34 = call i32 @ieee_change_buffer(%struct.ieee_handle* %31, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %30
  %37 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %38 = load i64, i64* @ieee_bb_record_enum, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @ieee_write_byte(%struct.ieee_handle* %37, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %44 = call i32 @ieee_write_byte(%struct.ieee_handle* %43, i32 2)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %48 = call i32 @ieee_write_number(%struct.ieee_handle* %47, i8 signext 0)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %52 = call i32 @ieee_write_id(%struct.ieee_handle* %51, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %50, %46, %42, %36, %30
  %55 = load i8*, i8** @TRUE, align 8
  %56 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %57 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** @FALSE, align 8
  store i8* %58, i8** %3, align 8
  br label %158

59:                                               ; preds = %50
  br label %72

60:                                               ; preds = %25
  %61 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %62 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %63 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %62, i32 0, i32 2
  %64 = call i32 @ieee_change_buffer(%struct.ieee_handle* %61, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %60
  %67 = load i8*, i8** @TRUE, align 8
  %68 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %69 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load i8*, i8** @FALSE, align 8
  store i8* %70, i8** %3, align 8
  br label %158

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71, %59
  %73 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %74 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %8, align 4
  %76 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %77 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add i32 %78, 1
  store i32 %79, i32* %77, align 8
  %80 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %81 = load i64, i64* @ieee_nn_record, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @ieee_write_byte(%struct.ieee_handle* %80, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %123

85:                                               ; preds = %72
  %86 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = trunc i32 %87 to i8
  %89 = call i32 @ieee_write_number(%struct.ieee_handle* %86, i8 signext %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %123

91:                                               ; preds = %85
  %92 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %93 = load %struct.ieee_name_type*, %struct.ieee_name_type** %7, align 8
  %94 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @ieee_write_id(%struct.ieee_handle* %92, i8* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %123

99:                                               ; preds = %91
  %100 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %101 = load i64, i64* @ieee_ty_record_enum, align 8
  %102 = trunc i64 %101 to i32
  %103 = call i32 @ieee_write_byte(%struct.ieee_handle* %100, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %99
  %106 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %107 = load %struct.ieee_name_type*, %struct.ieee_name_type** %7, align 8
  %108 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i8, i8* %109, align 8
  %111 = call i32 @ieee_write_number(%struct.ieee_handle* %106, i8 signext %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %105
  %114 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %115 = call i32 @ieee_write_byte(%struct.ieee_handle* %114, i32 206)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %113
  %118 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %119 = load i32, i32* %8, align 4
  %120 = trunc i32 %119 to i8
  %121 = call i32 @ieee_write_number(%struct.ieee_handle* %118, i8 signext %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %117, %113, %105, %99, %91, %85, %72
  %124 = load i8*, i8** @TRUE, align 8
  %125 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %126 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  %127 = load i8*, i8** @FALSE, align 8
  store i8* %127, i8** %3, align 8
  br label %158

128:                                              ; preds = %117
  %129 = load %struct.ieee_name_type*, %struct.ieee_name_type** %7, align 8
  %130 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  switch i32 %131, label %132 [
    i32 130, label %134
    i32 132, label %134
    i32 129, label %135
    i32 128, label %135
    i32 131, label %136
  ]

132:                                              ; preds = %128
  %133 = call i32 (...) @abort() #3
  unreachable

134:                                              ; preds = %128, %128
  store i8 83, i8* %9, align 1
  br label %137

135:                                              ; preds = %128, %128
  store i8 85, i8* %9, align 1
  br label %137

136:                                              ; preds = %128
  store i8 69, i8* %9, align 1
  br label %137

137:                                              ; preds = %136, %135, %134
  %138 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %139 = load i8, i8* %9, align 1
  %140 = call i32 @ieee_write_number(%struct.ieee_handle* %138, i8 signext %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %144 = call i32 @ieee_write_number(%struct.ieee_handle* %143, i8 signext 0)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %142, %137
  %147 = load i8*, i8** @TRUE, align 8
  %148 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %149 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %148, i32 0, i32 1
  store i8* %147, i8** %149, align 8
  %150 = load i8*, i8** @FALSE, align 8
  store i8* %150, i8** %3, align 8
  br label %158

151:                                              ; preds = %142
  br label %152

152:                                              ; preds = %151, %24
  %153 = load %struct.ieee_name_type*, %struct.ieee_name_type** %7, align 8
  %154 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %153, i32 0, i32 2
  %155 = load %struct.ieee_name_type*, %struct.ieee_name_type** %154, align 8
  store %struct.ieee_name_type* %155, %struct.ieee_name_type** %7, align 8
  br label %15

156:                                              ; preds = %15
  %157 = load i8*, i8** @TRUE, align 8
  store i8* %157, i8** %3, align 8
  br label %158

158:                                              ; preds = %156, %146, %123, %66, %54
  %159 = load i8*, i8** %3, align 8
  ret i8* %159
}

declare dso_local i64 @ieee_buffer_emptyp(i32*) #1

declare dso_local i32 @ieee_change_buffer(%struct.ieee_handle*, i32*) #1

declare dso_local i32 @ieee_write_byte(%struct.ieee_handle*, i32) #1

declare dso_local i32 @ieee_write_number(%struct.ieee_handle*, i8 signext) #1

declare dso_local i32 @ieee_write_id(%struct.ieee_handle*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
