; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_files.c_read_file_guts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_files.c_read_file_guts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@uchar = common dso_local global i32 0, align 4
@buf = common dso_local global i32 0, align 4
@CPP_DL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s is a block device\00", align 1
@SSIZE_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"%s is too large\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"%s has no current position\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"current position of %s is too large\00", align 1
@CPP_DL_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"%s is shorter than expected\00", align 1
@input_charset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*)* @read_file_guts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_file_guts(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %11 = load i32, i32* @uchar, align 4
  %12 = load i32, i32* @buf, align 4
  %13 = mul nsw i32 %11, %12
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @S_ISBLK(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @CPP_DL_ERROR, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @cpp_error(i32* %21, i32 %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 0, i32* %3, align 4
  br label %179

27:                                               ; preds = %2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @S_ISREG(i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %90

35:                                               ; preds = %27
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SSIZE_MAX, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* @CPP_DL_ERROR, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cpp_error(i32* %43, i32 %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  store i32 0, i32* %3, align 4
  br label %179

49:                                               ; preds = %35
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %6, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @SEEK_CUR, align 4
  %59 = call i64 @lseek(i32 %57, i32 0, i32 %58)
  store i64 %59, i64* %9, align 8
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %49
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* @CPP_DL_ERROR, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @cpp_error(i32* %62, i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  store i32 0, i32* %3, align 4
  br label %179

68:                                               ; preds = %49
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* @SSIZE_MAX, align 8
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %77, label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %9, align 8
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* %6, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %72, %68
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* @CPP_DL_ERROR, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @cpp_error(i32* %78, i32 %79, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  store i32 0, i32* %3, align 4
  br label %179

84:                                               ; preds = %72
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %9, align 8
  %87 = trunc i64 %86 to i32
  %88 = load i32, i32* %6, align 4
  %89 = sub nsw i32 %88, %87
  store i32 %89, i32* %6, align 4
  br label %91

90:                                               ; preds = %27
  store i32 8192, i32* %6, align 4
  br label %91

91:                                               ; preds = %90, %85
  %92 = load i32, i32* @uchar, align 4
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  %95 = call i32 @XNEWVEC(i32 %92, i32 %94)
  store i32 %95, i32* @buf, align 4
  store i32 0, i32* %7, align 4
  br label %96

96:                                               ; preds = %127, %91
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @buf, align 4
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %7, align 4
  %105 = sub nsw i32 %103, %104
  %106 = call i32 @read(i32 %99, i32 %102, i32 %105)
  store i32 %106, i32* %8, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %128

108:                                              ; preds = %96
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %108
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  br label %128

119:                                              ; preds = %115
  %120 = load i32, i32* %6, align 4
  %121 = mul nsw i32 %120, 2
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* @uchar, align 4
  %123 = load i32, i32* @buf, align 4
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  %126 = call i32 @XRESIZEVEC(i32 %122, i32 %123, i32 %125)
  store i32 %126, i32* @buf, align 4
  br label %127

127:                                              ; preds = %119, %108
  br label %96

128:                                              ; preds = %118, %96
  %129 = load i32, i32* %8, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %128
  %132 = load i32*, i32** %4, align 8
  %133 = load i32, i32* @CPP_DL_ERROR, align 4
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @cpp_errno(i32* %132, i32 %133, i32 %136)
  store i32 0, i32* %3, align 4
  br label %179

138:                                              ; preds = %128
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %162

141:                                              ; preds = %138
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %162

145:                                              ; preds = %141
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = bitcast %struct.TYPE_5__* %147 to { i64, i32 }*
  %149 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %148, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i64 @STAT_SIZE_RELIABLE(i64 %150, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %145
  %156 = load i32*, i32** %4, align 8
  %157 = load i32, i32* @CPP_DL_WARNING, align 4
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @cpp_error(i32* %156, i32 %157, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %160)
  br label %162

162:                                              ; preds = %155, %145, %141, %138
  %163 = load i32*, i32** %4, align 8
  %164 = load i32*, i32** %4, align 8
  %165 = load i32, i32* @input_charset, align 4
  %166 = call i32 @CPP_OPTION(i32* %164, i32 %165)
  %167 = load i32, i32* @buf, align 4
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* %7, align 4
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = bitcast i64* %172 to i32*
  %174 = call i32 @_cpp_convert_input(i32* %163, i32 %166, i32 %167, i32 %168, i32 %169, i32* %173)
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 8
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  store i32 1, i32* %178, align 8
  store i32 1, i32* %3, align 4
  br label %179

179:                                              ; preds = %162, %131, %77, %61, %42, %20
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @cpp_error(i32*, i32, i8*, i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @XNEWVEC(i32, i32) #1

declare dso_local i32 @read(i32, i32, i32) #1

declare dso_local i32 @XRESIZEVEC(i32, i32, i32) #1

declare dso_local i32 @cpp_errno(i32*, i32, i32) #1

declare dso_local i64 @STAT_SIZE_RELIABLE(i64, i32) #1

declare dso_local i32 @_cpp_convert_input(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @CPP_OPTION(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
