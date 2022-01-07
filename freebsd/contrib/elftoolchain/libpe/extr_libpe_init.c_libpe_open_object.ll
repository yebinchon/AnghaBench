; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libpe/extr_libpe_init.c_libpe_open_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libpe/extr_libpe_init.c_libpe_open_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i8* }
%struct.stat = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@PE_C_RDWR = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PE_O_PE32 = common dso_local global i8* null, align 8
@PE_O_COFF = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libpe_open_object(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i8], align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @fstat(i32 %9, %struct.stat* %4)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %158

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @S_ISREG(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %13
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @S_ISCHR(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @S_ISFIFO(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @S_ISSOCK(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %158

37:                                               ; preds = %31, %27, %23, %13
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PE_C_RDWR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @S_ISREG(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %158

49:                                               ; preds = %43, %37
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @S_ISREG(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %56, 4
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @ENOENT, align 4
  store i32 %59, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %158

60:                                               ; preds = %53, %49
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %65 = call i32 @read(i32 %63, i8* %64, i32 2)
  %66 = icmp ne i32 %65, 2
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @EIO, align 4
  store i32 %68, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %158

69:                                               ; preds = %60
  %70 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 77
  br i1 %73, label %74, label %95

74:                                               ; preds = %69
  %75 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 90
  br i1 %78, label %79, label %95

79:                                               ; preds = %74
  %80 = load i8*, i8** @PE_O_PE32, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 2
  %87 = call i32 @read(i32 %85, i8* %86, i32 2)
  %88 = icmp ne i32 %87, 2
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = load i32, i32* @EIO, align 4
  store i32 %90, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %158

91:                                               ; preds = %79
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %93 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %94 = call i32 @libpe_parse_msdos_header(%struct.TYPE_5__* %92, i8* %93)
  store i32 %94, i32* %2, align 4
  br label %158

95:                                               ; preds = %74, %69
  %96 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 80
  br i1 %99, label %100, label %142

100:                                              ; preds = %95
  %101 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 1
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 69
  br i1 %104, label %105, label %142

105:                                              ; preds = %100
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %110 = call i32 @read(i32 %108, i8* %109, i32 2)
  %111 = icmp ne i32 %110, 2
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = load i32, i32* @EIO, align 4
  store i32 %113, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %158

114:                                              ; preds = %105
  %115 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %140

119:                                              ; preds = %114
  %120 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 1
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %140

124:                                              ; preds = %119
  %125 = load i8*, i8** @PE_O_PE32, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 3
  store i8* %125, i8** %127, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %132 = call i32 @read(i32 %130, i8* %131, i32 4)
  %133 = icmp ne i32 %132, 4
  br i1 %133, label %134, label %136

134:                                              ; preds = %124
  %135 = load i32, i32* @EIO, align 4
  store i32 %135, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %158

136:                                              ; preds = %124
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %138 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %139 = call i32 @libpe_parse_coff_header(%struct.TYPE_5__* %137, i8* %138)
  store i32 %139, i32* %2, align 4
  br label %158

140:                                              ; preds = %119, %114
  %141 = load i32, i32* @ENOENT, align 4
  store i32 %141, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %158

142:                                              ; preds = %100, %95
  %143 = load i8*, i8** @PE_O_COFF, align 8
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 3
  store i8* %143, i8** %145, align 8
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 2
  %150 = call i32 @read(i32 %148, i8* %149, i32 2)
  %151 = icmp ne i32 %150, 2
  br i1 %151, label %152, label %154

152:                                              ; preds = %142
  %153 = load i32, i32* @EIO, align 4
  store i32 %153, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %158

154:                                              ; preds = %142
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %156 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %157 = call i32 @libpe_parse_coff_header(%struct.TYPE_5__* %155, i8* %156)
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %154, %152, %140, %136, %134, %112, %91, %89, %67, %58, %47, %35, %12
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @S_ISCHR(i32) #1

declare dso_local i32 @S_ISFIFO(i32) #1

declare dso_local i32 @S_ISSOCK(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @libpe_parse_msdos_header(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @libpe_parse_coff_header(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
