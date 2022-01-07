; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_add_bb11.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_add_bb11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@ieee_bb_record_enum = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"GNU objcopy\00", align 1
@SEC_CODE = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@IEEE_SECTION_NUMBER_BASE = common dso_local global i32 0, align 4
@ieee_be_record_enum = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee_handle*, %struct.TYPE_3__*, i32, i32)* @ieee_add_bb11 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_add_bb11(%struct.ieee_handle* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee_handle*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.ieee_handle* %0, %struct.ieee_handle** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %16 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %15, i32 0, i32 0
  %17 = call i32 @ieee_buffer_emptyp(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %4
  %20 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %21 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %22 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %21, i32 0, i32 0
  %23 = call i32 @ieee_change_buffer(%struct.ieee_handle* %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %5, align 4
  br label %165

27:                                               ; preds = %19
  br label %93

28:                                               ; preds = %4
  %29 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %30 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @bfd_get_filename(i32 %31)
  store i8* %32, i8** %11, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = call i8* @strrchr(i8* %33, i8 signext 47)
  store i8* %34, i8** %12, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i8*, i8** %12, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %12, align 8
  br label %42

40:                                               ; preds = %28
  %41 = load i8*, i8** %11, align 8
  store i8* %41, i8** %12, align 8
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i8*, i8** %12, align 8
  %44 = call i8* @xstrdup(i8* %43)
  store i8* %44, i8** %13, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = call i8* @strrchr(i8* %45, i8 signext 46)
  store i8* %46, i8** %14, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i8*, i8** %14, align 8
  store i8 0, i8* %50, align 1
  br label %51

51:                                               ; preds = %49, %42
  %52 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %53 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %54 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %53, i32 0, i32 0
  %55 = call i32 @ieee_change_buffer(%struct.ieee_handle* %52, i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %88

57:                                               ; preds = %51
  %58 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %59 = load i64, i64* @ieee_bb_record_enum, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @ieee_write_byte(%struct.ieee_handle* %58, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %88

63:                                               ; preds = %57
  %64 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %65 = call i32 @ieee_write_byte(%struct.ieee_handle* %64, i32 10)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %63
  %68 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %69 = call i32 @ieee_write_number(%struct.ieee_handle* %68, i32 0)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %67
  %72 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = call i32 @ieee_write_id(%struct.ieee_handle* %72, i8* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %71
  %77 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %78 = call i32 @ieee_write_id(%struct.ieee_handle* %77, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %82 = call i32 @ieee_write_number(%struct.ieee_handle* %81, i32 0)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %86 = call i32 @ieee_write_id(%struct.ieee_handle* %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %84, %80, %76, %71, %67, %63, %57, %51
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %5, align 4
  br label %165

90:                                               ; preds = %84
  %91 = load i8*, i8** %13, align 8
  %92 = call i32 @free(i8* %91)
  br label %93

93:                                               ; preds = %90, %27
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @SEC_CODE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  store i32 1, i32* %10, align 4
  br label %111

101:                                              ; preds = %93
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @SEC_READONLY, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  store i32 3, i32* %10, align 4
  br label %110

109:                                              ; preds = %101
  store i32 2, i32* %10, align 4
  br label %110

110:                                              ; preds = %109, %108
  br label %111

111:                                              ; preds = %110, %100
  %112 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %113 = load i64, i64* @ieee_bb_record_enum, align 8
  %114 = trunc i64 %113 to i32
  %115 = call i32 @ieee_write_byte(%struct.ieee_handle* %112, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %161

117:                                              ; preds = %111
  %118 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %119 = call i32 @ieee_write_byte(%struct.ieee_handle* %118, i32 11)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %161

121:                                              ; preds = %117
  %122 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %123 = call i32 @ieee_write_number(%struct.ieee_handle* %122, i32 0)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %161

125:                                              ; preds = %121
  %126 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %127 = call i32 @ieee_write_id(%struct.ieee_handle* %126, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %161

129:                                              ; preds = %125
  %130 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @ieee_write_number(%struct.ieee_handle* %130, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %161

134:                                              ; preds = %129
  %135 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @IEEE_SECTION_NUMBER_BASE, align 4
  %140 = add nsw i32 %138, %139
  %141 = call i32 @ieee_write_number(%struct.ieee_handle* %135, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %161

143:                                              ; preds = %134
  %144 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @ieee_write_number(%struct.ieee_handle* %144, i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %161

148:                                              ; preds = %143
  %149 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %150 = load i64, i64* @ieee_be_record_enum, align 8
  %151 = trunc i64 %150 to i32
  %152 = call i32 @ieee_write_byte(%struct.ieee_handle* %149, i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %148
  %155 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* %8, align 4
  %158 = sub nsw i32 %156, %157
  %159 = call i32 @ieee_write_number(%struct.ieee_handle* %155, i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %154, %148, %143, %134, %129, %125, %121, %117, %111
  %162 = load i32, i32* @FALSE, align 4
  store i32 %162, i32* %5, align 4
  br label %165

163:                                              ; preds = %154
  %164 = load i32, i32* @TRUE, align 4
  store i32 %164, i32* %5, align 4
  br label %165

165:                                              ; preds = %163, %161, %88, %25
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local i32 @ieee_buffer_emptyp(i32*) #1

declare dso_local i32 @ieee_change_buffer(%struct.ieee_handle*, i32*) #1

declare dso_local i8* @bfd_get_filename(i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @ieee_write_byte(%struct.ieee_handle*, i32) #1

declare dso_local i32 @ieee_write_number(%struct.ieee_handle*, i32) #1

declare dso_local i32 @ieee_write_id(%struct.ieee_handle*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
