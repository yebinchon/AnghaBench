; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_fdtput.c_encode_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_fdtput.c_encode_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_info = type { i8, i32, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Decoding value:\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"\09string: '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"\09%s: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Value size %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.display_info*, i8**, i32, i8**, i32*)* @encode_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_value(%struct.display_info* %0, i8** %1, i32 %2, i8** %3, i32* %4) #0 {
  %6 = alloca %struct.display_info*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [3 x i8], align 1
  %18 = alloca i32*, align 8
  store %struct.display_info* %0, %struct.display_info** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store i32* %4, i32** %10, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %16, align 4
  %19 = load %struct.display_info*, %struct.display_info** %6, align 8
  %20 = getelementptr inbounds %struct.display_info, %struct.display_info* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %5
  %27 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 0
  store i8 37, i8* %27, align 1
  %28 = load %struct.display_info*, %struct.display_info** %6, align 8
  %29 = getelementptr inbounds %struct.display_info, %struct.display_info* %28, i32 0, i32 0
  %30 = load i8, i8* %29, align 8
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.display_info*, %struct.display_info** %6, align 8
  %35 = getelementptr inbounds %struct.display_info, %struct.display_info* %34, i32 0, i32 0
  %36 = load i8, i8* %35, align 8
  %37 = sext i8 %36 to i32
  br label %39

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %33
  %40 = phi i32 [ %37, %33 ], [ 100, %38 ]
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 1
  store i8 %41, i8* %42, align 1
  %43 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 2
  store i8 0, i8* %43, align 1
  br label %44

44:                                               ; preds = %151, %39
  %45 = load i32, i32* %8, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %159

47:                                               ; preds = %44
  %48 = load %struct.display_info*, %struct.display_info** %6, align 8
  %49 = getelementptr inbounds %struct.display_info, %struct.display_info* %48, i32 0, i32 0
  %50 = load i8, i8* %49, align 8
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 115
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load i8**, i8*** %7, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %14, align 4
  br label %70

58:                                               ; preds = %47
  %59 = load %struct.display_info*, %struct.display_info** %6, align 8
  %60 = getelementptr inbounds %struct.display_info, %struct.display_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %68

64:                                               ; preds = %58
  %65 = load %struct.display_info*, %struct.display_info** %6, align 8
  %66 = getelementptr inbounds %struct.display_info, %struct.display_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  br label %68

68:                                               ; preds = %64, %63
  %69 = phi i32 [ 4, %63 ], [ %67, %64 ]
  store i32 %69, i32* %14, align 4
  br label %70

70:                                               ; preds = %68, %53
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32, i32* %12, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %70
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %77, %78
  %80 = add nsw i32 %79, 500
  store i32 %80, i32* %12, align 4
  %81 = load i8*, i8** %11, align 8
  %82 = load i32, i32* %12, align 4
  %83 = call i8* @xrealloc(i8* %81, i32 %82)
  store i8* %83, i8** %11, align 8
  br label %84

84:                                               ; preds = %76, %70
  %85 = load i8*, i8** %11, align 8
  %86 = load i32, i32* %16, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  store i8* %88, i8** %13, align 8
  %89 = load %struct.display_info*, %struct.display_info** %6, align 8
  %90 = getelementptr inbounds %struct.display_info, %struct.display_info* %89, i32 0, i32 0
  %91 = load i8, i8* %90, align 8
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 115
  br i1 %93, label %94, label %109

94:                                               ; preds = %84
  %95 = load i8*, i8** %13, align 8
  %96 = load i8**, i8*** %7, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @memcpy(i8* %95, i8* %97, i32 %98)
  %100 = load %struct.display_info*, %struct.display_info** %6, align 8
  %101 = getelementptr inbounds %struct.display_info, %struct.display_info* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %94
  %105 = load i32, i32* @stderr, align 4
  %106 = load i8*, i8** %13, align 8
  %107 = call i32 (i32, i8*, ...) @fprintf(i32 %105, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %106)
  br label %108

108:                                              ; preds = %104, %94
  br label %150

109:                                              ; preds = %84
  %110 = load i8*, i8** %13, align 8
  %111 = bitcast i8* %110 to i32*
  store i32* %111, i32** %18, align 8
  %112 = load i8**, i8*** %7, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 0
  %115 = call i32 @sscanf(i8* %113, i8* %114, i32* %15)
  %116 = load i32, i32* %14, align 4
  %117 = icmp eq i32 %116, 4
  br i1 %117, label %118, label %122

118:                                              ; preds = %109
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @cpu_to_fdt32(i32 %119)
  %121 = load i32*, i32** %18, align 8
  store i32 %120, i32* %121, align 4
  br label %126

122:                                              ; preds = %109
  %123 = load i32, i32* %15, align 4
  %124 = trunc i32 %123 to i8
  %125 = load i8*, i8** %13, align 8
  store i8 %124, i8* %125, align 1
  br label %126

126:                                              ; preds = %122, %118
  %127 = load %struct.display_info*, %struct.display_info** %6, align 8
  %128 = getelementptr inbounds %struct.display_info, %struct.display_info* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %149

131:                                              ; preds = %126
  %132 = load i32, i32* @stderr, align 4
  %133 = load %struct.display_info*, %struct.display_info** %6, align 8
  %134 = getelementptr inbounds %struct.display_info, %struct.display_info* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %145

138:                                              ; preds = %131
  %139 = load %struct.display_info*, %struct.display_info** %6, align 8
  %140 = getelementptr inbounds %struct.display_info, %struct.display_info* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 2
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  br label %145

145:                                              ; preds = %138, %137
  %146 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %137 ], [ %144, %138 ]
  %147 = load i32, i32* %15, align 4
  %148 = call i32 (i32, i8*, ...) @fprintf(i32 %132, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %146, i32 %147)
  br label %149

149:                                              ; preds = %145, %126
  br label %150

150:                                              ; preds = %149, %108
  br label %151

151:                                              ; preds = %150
  %152 = load i8**, i8*** %7, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i32 1
  store i8** %153, i8*** %7, align 8
  %154 = load i32, i32* %8, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %16, align 4
  %158 = add nsw i32 %157, %156
  store i32 %158, i32* %16, align 4
  br label %44

159:                                              ; preds = %44
  %160 = load i32, i32* %16, align 4
  %161 = load i32*, i32** %10, align 8
  store i32 %160, i32* %161, align 4
  %162 = load i8*, i8** %11, align 8
  %163 = load i8**, i8*** %9, align 8
  store i8* %162, i8** %163, align 8
  %164 = load %struct.display_info*, %struct.display_info** %6, align 8
  %165 = getelementptr inbounds %struct.display_info, %struct.display_info* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %159
  %169 = load i32, i32* @stderr, align 4
  %170 = load i32, i32* %16, align 4
  %171 = call i32 (i32, i8*, ...) @fprintf(i32 %169, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %170)
  br label %172

172:                                              ; preds = %168, %159
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @xrealloc(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @cpu_to_fdt32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
