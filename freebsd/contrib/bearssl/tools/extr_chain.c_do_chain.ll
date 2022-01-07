; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_chain.c_do_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_chain.c_do_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"-verbose\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"-quiet\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"ERROR: unknown option: '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"ERROR: no certificate file provided\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Reading file '%s': \00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"%lu certificate%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"CERT%ld\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"\0Astatic const br_x509_certificate CHAIN[] = {\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"\0A\09{ (unsigned char *)CERT%ld, sizeof CERT%ld }\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"\0A};\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"\0A#define CHAIN_LEN   %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_chain(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [50 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %64, %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %67

21:                                               ; preds = %17
  %22 = load i8**, i8*** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %11, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 45
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %64

35:                                               ; preds = %21
  %36 = load i8**, i8*** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  store i8* null, i8** %39, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = call i64 @eqstr(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %35
  %44 = load i8*, i8** %11, align 8
  %45 = call i64 @eqstr(i8* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %35
  store i32 1, i32* %6, align 4
  br label %63

48:                                               ; preds = %43
  %49 = load i8*, i8** %11, align 8
  %50 = call i64 @eqstr(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %11, align 8
  %54 = call i64 @eqstr(i8* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %48
  store i32 0, i32* %6, align 4
  br label %62

57:                                               ; preds = %52
  %58 = load i32, i32* @stderr, align 4
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %59)
  %61 = call i32 (...) @usage_chain()
  br label %176

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %47
  br label %64

64:                                               ; preds = %63, %32
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %17

67:                                               ; preds = %17
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32, i32* @stderr, align 4
  %72 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %73 = call i32 (...) @usage_chain()
  br label %176

74:                                               ; preds = %67
  store i64 0, i64* %10, align 8
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %149, %74
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %3, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %152

79:                                               ; preds = %75
  %80 = load i8**, i8*** %4, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %12, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %149

88:                                               ; preds = %79
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i32, i32* @stderr, align 4
  %93 = load i8*, i8** %12, align 8
  %94 = call i32 (i32, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %93)
  %95 = load i32, i32* @stderr, align 4
  %96 = call i32 @fflush(i32 %95)
  br label %97

97:                                               ; preds = %91, %88
  %98 = load i8*, i8** %12, align 8
  %99 = call %struct.TYPE_5__* @read_certificates(i8* %98, i64* %15)
  store %struct.TYPE_5__* %99, %struct.TYPE_5__** %13, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %101 = icmp eq %struct.TYPE_5__* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %176

103:                                              ; preds = %97
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %103
  %107 = load i32, i32* @stderr, align 4
  %108 = load i64, i64* %15, align 8
  %109 = load i64, i64* %15, align 8
  %110 = icmp ugt i64 %109, 1
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %113 = call i32 (i32, i8*, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i64 %108, i8* %112)
  br label %114

114:                                              ; preds = %106, %103
  store i64 0, i64* %14, align 8
  br label %115

115:                                              ; preds = %143, %114
  %116 = load i64, i64* %14, align 8
  %117 = load i64, i64* %15, align 8
  %118 = icmp ult i64 %116, %117
  br i1 %118, label %119, label %146

119:                                              ; preds = %115
  %120 = getelementptr inbounds [50 x i8], [50 x i8]* %16, i64 0, i64 0
  %121 = load i64, i64* %10, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %10, align 8
  %123 = trunc i64 %121 to i32
  %124 = call i32 @sprintf(i8* %120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %123)
  %125 = getelementptr inbounds [50 x i8], [50 x i8]* %16, i64 0, i64 0
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %127 = load i64, i64* %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %132 = load i64, i64* %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @print_blob(i8* %125, %struct.TYPE_5__* %130, i32 %135)
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %138 = load i64, i64* %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %140, align 8
  %142 = call i32 @xfree(%struct.TYPE_5__* %141)
  br label %143

143:                                              ; preds = %119
  %144 = load i64, i64* %14, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %14, align 8
  br label %115

146:                                              ; preds = %115
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %148 = call i32 @xfree(%struct.TYPE_5__* %147)
  br label %149

149:                                              ; preds = %146, %87
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %7, align 4
  br label %75

152:                                              ; preds = %75
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0))
  store i64 0, i64* %9, align 8
  br label %154

154:                                              ; preds = %167, %152
  %155 = load i64, i64* %9, align 8
  %156 = load i64, i64* %10, align 8
  %157 = icmp slt i64 %155, %156
  br i1 %157, label %158, label %170

158:                                              ; preds = %154
  %159 = load i64, i64* %9, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %158
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %163

163:                                              ; preds = %161, %158
  %164 = load i64, i64* %9, align 8
  %165 = load i64, i64* %9, align 8
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i64 %164, i64 %165)
  br label %167

167:                                              ; preds = %163
  %168 = load i64, i64* %9, align 8
  %169 = add nsw i64 %168, 1
  store i64 %169, i64* %9, align 8
  br label %154

170:                                              ; preds = %154
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %172 = load i64, i64* %10, align 8
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i64 %172)
  br label %174

174:                                              ; preds = %176, %170
  %175 = load i32, i32* %5, align 4
  ret i32 %175

176:                                              ; preds = %102, %70, %57
  store i32 -1, i32* %5, align 4
  br label %174
}

declare dso_local i64 @eqstr(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @usage_chain(...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local %struct.TYPE_5__* @read_certificates(i8*, i64*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @print_blob(i8*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @xfree(%struct.TYPE_5__*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
