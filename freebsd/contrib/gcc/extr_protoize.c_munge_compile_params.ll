; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_protoize.c_munge_compile_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_protoize.c_munge_compile_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@compiler_file_name = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"-aux-info\00", align 1
@aux_info_file_name_index = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"-S\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@HOST_BIT_BUCKET = common dso_local global i8* null, align 8
@W_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@input_file_name_index = common dso_local global i32 0, align 4
@compile_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @munge_compile_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @munge_compile_params(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = add nsw i32 %8, 8
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 8
  %12 = trunc i64 %11 to i32
  %13 = call i8** @alloca(i32 %12)
  store i8** %13, i8*** %3, align 8
  store i32 0, i32* %4, align 4
  %14 = load i8*, i8** @compiler_file_name, align 8
  %15 = load i8**, i8*** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %4, align 4
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds i8*, i8** %15, i64 %18
  store i8* %14, i8** %19, align 8
  br label %20

20:                                               ; preds = %123, %1
  br label %21

21:                                               ; preds = %26, %20
  %22 = load i8*, i8** %2, align 8
  %23 = load i8, i8* %22, align 1
  %24 = call i64 @ISSPACE(i8 zeroext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i8*, i8** %2, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %2, align 8
  br label %21

29:                                               ; preds = %21
  %30 = load i8*, i8** %2, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %124

34:                                               ; preds = %29
  %35 = load i8*, i8** %2, align 8
  store i8* %35, i8** %5, align 8
  br label %36

36:                                               ; preds = %49, %34
  %37 = load i8*, i8** %2, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i8*, i8** %2, align 8
  %43 = load i8, i8* %42, align 1
  %44 = call i64 @ISSPACE(i8 zeroext %43)
  %45 = icmp ne i64 %44, 0
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %41, %36
  %48 = phi i1 [ false, %36 ], [ %46, %41 ]
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = load i8*, i8** %2, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %2, align 8
  br label %36

52:                                               ; preds = %47
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 45
  br i1 %57, label %58, label %71

58:                                               ; preds = %52
  %59 = load i8*, i8** %5, align 8
  %60 = load i8*, i8** %2, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = call i8* @dupnstr(i8* %59, i64 %64)
  %66 = load i8**, i8*** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8*, i8** %66, i64 %69
  store i8* %65, i8** %70, align 8
  br label %118

71:                                               ; preds = %52
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  switch i32 %75, label %104 [
    i32 103, label %76
    i32 79, label %76
    i32 83, label %76
    i32 99, label %76
    i32 111, label %77
  ]

76:                                               ; preds = %71, %71, %71, %71
  br label %117

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %83, %77
  %79 = load i8*, i8** %2, align 8
  %80 = load i8, i8* %79, align 1
  %81 = call i64 @ISSPACE(i8 zeroext %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i8*, i8** %2, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %2, align 8
  br label %78

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %100, %86
  %88 = load i8*, i8** %2, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load i8*, i8** %2, align 8
  %94 = load i8, i8* %93, align 1
  %95 = call i64 @ISSPACE(i8 zeroext %94)
  %96 = icmp ne i64 %95, 0
  %97 = xor i1 %96, true
  br label %98

98:                                               ; preds = %92, %87
  %99 = phi i1 [ false, %87 ], [ %97, %92 ]
  br i1 %99, label %100, label %103

100:                                              ; preds = %98
  %101 = load i8*, i8** %2, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %2, align 8
  br label %87

103:                                              ; preds = %98
  br label %117

104:                                              ; preds = %71
  %105 = load i8*, i8** %5, align 8
  %106 = load i8*, i8** %2, align 8
  %107 = load i8*, i8** %5, align 8
  %108 = ptrtoint i8* %106 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = call i8* @dupnstr(i8* %105, i64 %110)
  %112 = load i8**, i8*** %3, align 8
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %4, align 4
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8*, i8** %112, i64 %115
  store i8* %111, i8** %116, align 8
  br label %117

117:                                              ; preds = %104, %103, %76
  br label %118

118:                                              ; preds = %117, %58
  %119 = load i8*, i8** %2, align 8
  %120 = load i8, i8* %119, align 1
  %121 = icmp ne i8 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %118
  br label %124

123:                                              ; preds = %118
  br label %20

124:                                              ; preds = %122, %33
  %125 = load i8**, i8*** %3, align 8
  %126 = load i32, i32* %4, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %4, align 4
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i8*, i8** %125, i64 %128
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %129, align 8
  %130 = load i32, i32* %4, align 4
  store i32 %130, i32* @aux_info_file_name_index, align 4
  %131 = load i8**, i8*** %3, align 8
  %132 = load i32, i32* %4, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %4, align 4
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i8*, i8** %131, i64 %134
  store i8* null, i8** %135, align 8
  %136 = load i8**, i8*** %3, align 8
  %137 = load i32, i32* %4, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %4, align 4
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i8*, i8** %136, i64 %139
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %140, align 8
  %141 = load i8**, i8*** %3, align 8
  %142 = load i32, i32* %4, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %4, align 4
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i8*, i8** %141, i64 %144
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %145, align 8
  %146 = load i8*, i8** @HOST_BIT_BUCKET, align 8
  %147 = call i64 @stat(i8* %146, %struct.stat* %6)
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %166

149:                                              ; preds = %124
  %150 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @S_ISDIR(i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %166, label %154

154:                                              ; preds = %149
  %155 = load i8*, i8** @HOST_BIT_BUCKET, align 8
  %156 = load i32, i32* @W_OK, align 4
  %157 = call i64 @access(i8* %155, i32 %156)
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %154
  %160 = load i8*, i8** @HOST_BIT_BUCKET, align 8
  %161 = load i8**, i8*** %3, align 8
  %162 = load i32, i32* %4, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %4, align 4
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i8*, i8** %161, i64 %164
  store i8* %160, i8** %165, align 8
  br label %172

166:                                              ; preds = %154, %149, %124
  %167 = load i8**, i8*** %3, align 8
  %168 = load i32, i32* %4, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %4, align 4
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i8*, i8** %167, i64 %170
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %171, align 8
  br label %172

172:                                              ; preds = %166, %159
  %173 = load i32, i32* %4, align 4
  store i32 %173, i32* @input_file_name_index, align 4
  %174 = load i8**, i8*** %3, align 8
  %175 = load i32, i32* %4, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %4, align 4
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i8*, i8** %174, i64 %177
  store i8* null, i8** %178, align 8
  %179 = load i8**, i8*** %3, align 8
  %180 = load i32, i32* %4, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %4, align 4
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds i8*, i8** %179, i64 %182
  store i8* null, i8** %183, align 8
  %184 = load i32, i32* %4, align 4
  %185 = add nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = mul i64 8, %186
  %188 = trunc i64 %187 to i32
  %189 = call i32 @xmalloc(i32 %188)
  store i32 %189, i32* @compile_params, align 4
  %190 = load i32, i32* @compile_params, align 4
  %191 = load i8**, i8*** %3, align 8
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = mul i64 8, %193
  %195 = trunc i64 %194 to i32
  %196 = call i32 @memcpy(i32 %190, i8** %191, i32 %195)
  ret void
}

declare dso_local i8** @alloca(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @ISSPACE(i8 zeroext) #1

declare dso_local i8* @dupnstr(i8*, i64) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @xmalloc(i32) #1

declare dso_local i32 @memcpy(i32, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
