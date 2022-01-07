; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_start_compilation_unit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_start_compilation_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { i8*, i8*, i32, i32, i32, i32*, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@ieee_bb_record_enum = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @ieee_start_compilation_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_start_compilation_unit(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ieee_handle*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.ieee_handle*
  store %struct.ieee_handle* %12, %struct.ieee_handle** %6, align 8
  %13 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %14 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %19 = call i32 @ieee_finish_compilation_unit(%struct.ieee_handle* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %3, align 4
  br label %144

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %2
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %27 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @strrchr(i8* %28, i8 signext 47)
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %7, align 8
  br label %37

35:                                               ; preds = %24
  %36 = load i8*, i8** %5, align 8
  store i8* %36, i8** %7, align 8
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i8*, i8** %7, align 8
  %39 = call i8* @xstrdup(i8* %38)
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call i8* @strrchr(i8* %40, i8 signext 46)
  store i8* %41, i8** %9, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i8*, i8** %9, align 8
  store i8 0, i8* %45, align 1
  br label %46

46:                                               ; preds = %44, %37
  %47 = load i8*, i8** %8, align 8
  %48 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %49 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %51 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %52 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %51, i32 0, i32 4
  %53 = call i32 @ieee_init_buffer(%struct.ieee_handle* %50, i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %46
  %56 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %57 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %58 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %57, i32 0, i32 3
  %59 = call i32 @ieee_init_buffer(%struct.ieee_handle* %56, i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %55
  %62 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %63 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %64 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %63, i32 0, i32 7
  %65 = call i32 @ieee_init_buffer(%struct.ieee_handle* %62, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %69 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %70 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %69, i32 0, i32 6
  %71 = call i32 @ieee_init_buffer(%struct.ieee_handle* %68, i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %67, %61, %55, %46
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %3, align 4
  br label %144

75:                                               ; preds = %67
  %76 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %77 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %76, i32 0, i32 5
  store i32* null, i32** %77, align 8
  %78 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %79 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %80 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %79, i32 0, i32 4
  %81 = call i32 @ieee_change_buffer(%struct.ieee_handle* %78, i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %104

83:                                               ; preds = %75
  %84 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %85 = load i64, i64* @ieee_bb_record_enum, align 8
  %86 = trunc i64 %85 to i32
  %87 = call i32 @ieee_write_byte(%struct.ieee_handle* %84, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %83
  %90 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %91 = call i32 @ieee_write_byte(%struct.ieee_handle* %90, i32 1)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %89
  %94 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %95 = call i32 @ieee_write_number(%struct.ieee_handle* %94, i32 0)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %99 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %100 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @ieee_write_id(%struct.ieee_handle* %98, i8* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %97, %93, %89, %83, %75
  %105 = load i32, i32* @FALSE, align 4
  store i32 %105, i32* %3, align 4
  br label %144

106:                                              ; preds = %97
  %107 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %108 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %10, align 4
  %110 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %111 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = add i32 %112, 1
  store i32 %113, i32* %111, align 8
  %114 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %115 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %116 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %115, i32 0, i32 3
  %117 = call i32 @ieee_change_buffer(%struct.ieee_handle* %114, i32* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %140

119:                                              ; preds = %106
  %120 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %121 = load i64, i64* @ieee_bb_record_enum, align 8
  %122 = trunc i64 %121 to i32
  %123 = call i32 @ieee_write_byte(%struct.ieee_handle* %120, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %119
  %126 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %127 = call i32 @ieee_write_byte(%struct.ieee_handle* %126, i32 3)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %125
  %130 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %131 = call i32 @ieee_write_number(%struct.ieee_handle* %130, i32 0)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %129
  %134 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %135 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %136 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @ieee_write_id(%struct.ieee_handle* %134, i8* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %133, %129, %125, %119, %106
  %141 = load i32, i32* @FALSE, align 4
  store i32 %141, i32* %3, align 4
  br label %144

142:                                              ; preds = %133
  %143 = load i32, i32* @TRUE, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %142, %140, %104, %73, %21
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @ieee_finish_compilation_unit(%struct.ieee_handle*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @ieee_init_buffer(%struct.ieee_handle*, i32*) #1

declare dso_local i32 @ieee_change_buffer(%struct.ieee_handle*, i32*) #1

declare dso_local i32 @ieee_write_byte(%struct.ieee_handle*, i32) #1

declare dso_local i32 @ieee_write_number(%struct.ieee_handle*, i32) #1

declare dso_local i32 @ieee_write_id(%struct.ieee_handle*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
