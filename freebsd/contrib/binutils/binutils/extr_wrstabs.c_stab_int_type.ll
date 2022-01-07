; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_int_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_int_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_write_handle = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i64* }

@.str = private unnamed_addr constant [27 x i8] c"stab_int_type: bad size %u\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"%ld=r%ld;\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"0;\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%ld;\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"-1;\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"01777777777777777777777;\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%ld;%ld;\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"01000000000000000000000;0777777777777777777777;\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i64)* @stab_int_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stab_int_type(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.stab_write_handle*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [100 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.stab_write_handle*
  store %struct.stab_write_handle* %13, %struct.stab_write_handle** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ule i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = icmp ugt i64 %18, 8
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 8
  br i1 %22, label %23, label %28

23:                                               ; preds = %20, %3
  %24 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @non_fatal(i32 %24, i32 %25)
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* %4, align 8
  br label %155

28:                                               ; preds = %20, %16
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.stab_write_handle*, %struct.stab_write_handle** %8, align 8
  %33 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  store i64* %35, i64** %9, align 8
  br label %41

36:                                               ; preds = %28
  %37 = load %struct.stab_write_handle*, %struct.stab_write_handle** %8, align 8
  %38 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  store i64* %40, i64** %9, align 8
  br label %41

41:                                               ; preds = %36, %31
  %42 = load i64*, i64** %9, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sub i32 %43, 1
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %42, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %41
  %50 = load %struct.stab_write_handle*, %struct.stab_write_handle** %8, align 8
  %51 = load i64*, i64** %9, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sub i32 %52, 1
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %51, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i64 @stab_push_defined_type(%struct.stab_write_handle* %50, i64 %56, i32 %57)
  store i64 %58, i64* %4, align 8
  br label %155

59:                                               ; preds = %41
  %60 = load %struct.stab_write_handle*, %struct.stab_write_handle** %8, align 8
  %61 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %10, align 8
  %63 = load %struct.stab_write_handle*, %struct.stab_write_handle** %8, align 8
  %64 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %64, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i64*, i64** %9, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sub i32 %69, 1
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %68, i64 %71
  store i64 %67, i64* %72, align 8
  %73 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %10, align 8
  %76 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %74, i64 %75)
  %77 = load i64, i64* %7, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %115

79:                                               ; preds = %59
  %80 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %81 = call i32 @strcat(i8* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32, i32* %6, align 4
  %83 = zext i32 %82 to i64
  %84 = icmp ult i64 %83, 8
  br i1 %84, label %85, label %97

85:                                               ; preds = %79
  %86 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %87 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %88 = call i32 @strlen(i8* %87)
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %86, i64 %89
  %91 = load i32, i32* %6, align 4
  %92 = mul i32 %91, 8
  %93 = zext i32 %92 to i64
  %94 = shl i64 1, %93
  %95 = sub nsw i64 %94, 1
  %96 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %95)
  br label %114

97:                                               ; preds = %79
  %98 = load i32, i32* %6, align 4
  %99 = zext i32 %98 to i64
  %100 = icmp eq i64 %99, 8
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %103 = call i32 @strcat(i8* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %113

104:                                              ; preds = %97
  %105 = load i32, i32* %6, align 4
  %106 = icmp eq i32 %105, 8
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %109 = call i32 @strcat(i8* %108, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %112

110:                                              ; preds = %104
  %111 = call i32 (...) @abort() #3
  unreachable

112:                                              ; preds = %107
  br label %113

113:                                              ; preds = %112, %101
  br label %114

114:                                              ; preds = %113, %85
  br label %148

115:                                              ; preds = %59
  %116 = load i32, i32* %6, align 4
  %117 = zext i32 %116 to i64
  %118 = icmp ule i64 %117, 8
  br i1 %118, label %119, label %138

119:                                              ; preds = %115
  %120 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %121 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %122 = call i32 @strlen(i8* %121)
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %120, i64 %123
  %125 = load i32, i32* %6, align 4
  %126 = mul i32 %125, 8
  %127 = sub i32 %126, 1
  %128 = zext i32 %127 to i64
  %129 = shl i64 1, %128
  %130 = sub i64 0, %129
  %131 = load i32, i32* %6, align 4
  %132 = mul i32 %131, 8
  %133 = sub i32 %132, 1
  %134 = zext i32 %133 to i64
  %135 = shl i64 1, %134
  %136 = sub i64 %135, 1
  %137 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %124, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i64 %130, i64 %136)
  br label %147

138:                                              ; preds = %115
  %139 = load i32, i32* %6, align 4
  %140 = icmp eq i32 %139, 8
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %143 = call i32 @strcat(i8* %142, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  br label %146

144:                                              ; preds = %138
  %145 = call i32 (...) @abort() #3
  unreachable

146:                                              ; preds = %141
  br label %147

147:                                              ; preds = %146, %119
  br label %148

148:                                              ; preds = %147, %114
  %149 = load %struct.stab_write_handle*, %struct.stab_write_handle** %8, align 8
  %150 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %151 = load i64, i64* %10, align 8
  %152 = load i32, i32* @TRUE, align 4
  %153 = load i32, i32* %6, align 4
  %154 = call i64 @stab_push_string(%struct.stab_write_handle* %149, i8* %150, i64 %151, i32 %152, i32 %153)
  store i64 %154, i64* %4, align 8
  br label %155

155:                                              ; preds = %148, %49, %23
  %156 = load i64, i64* %4, align 8
  ret i64 %156
}

declare dso_local i32 @non_fatal(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @stab_push_defined_type(%struct.stab_write_handle*, i64, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64, ...) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @stab_push_string(%struct.stab_write_handle*, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
