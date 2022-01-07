; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gen-protos.c_parse_fn_proto.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gen-protos.c_parse_fn_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fn_decl = type { i8*, i8*, i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Funny input line: %s\0A\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"%s: Can't handle this complex prototype: %s\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"typedef \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"extern \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.fn_decl*)* @parse_fn_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_fn_proto(i8* %0, i8* %1, %struct.fn_decl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fn_decl*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.fn_decl* %2, %struct.fn_decl** %7, align 8
  store i32 1, i32* %9, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 -1
  store i8* %17, i8** %8, align 8
  br label %18

18:                                               ; preds = %30, %3
  %19 = load i8*, i8** %8, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 32
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load i8*, i8** %8, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 9
  br label %28

28:                                               ; preds = %23, %18
  %29 = phi i1 [ true, %18 ], [ %27, %23 ]
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 -1
  store i8* %32, i8** %8, align 8
  br label %18

33:                                               ; preds = %28
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 -1
  store i8* %35, i8** %8, align 8
  %36 = load i8, i8* %34, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 59
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* @stderr, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %41)
  store i32 0, i32* %4, align 4
  br label %180

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %56, %43
  %45 = load i8*, i8** %8, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 32
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load i8*, i8** %8, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 9
  br label %54

54:                                               ; preds = %49, %44
  %55 = phi i1 [ true, %44 ], [ %53, %49 ]
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 -1
  store i8* %58, i8** %8, align 8
  br label %44

59:                                               ; preds = %54
  %60 = load i8*, i8** %8, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 41
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @stderr, align 4
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %66)
  store i32 0, i32* %4, align 4
  br label %180

68:                                               ; preds = %59
  %69 = load i8*, i8** %8, align 8
  store i8* %69, i8** %11, align 8
  br label %70

70:                                               ; preds = %89, %68
  %71 = load i8*, i8** %8, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 -1
  store i8* %72, i8** %8, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp eq i32 %75, 40
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %9, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %90

82:                                               ; preds = %77, %70
  %83 = load i32, i32* %15, align 4
  %84 = icmp eq i32 %83, 41
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %85, %82
  br label %89

89:                                               ; preds = %88
  br label %70

90:                                               ; preds = %81
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  store i8* %92, i8** %10, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 -1
  store i8* %94, i8** %8, align 8
  br label %95

95:                                               ; preds = %107, %90
  %96 = load i8*, i8** %8, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 32
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load i8*, i8** %8, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 9
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ true, %95 ], [ %104, %100 ]
  br i1 %106, label %107, label %110

107:                                              ; preds = %105
  %108 = load i8*, i8** %8, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 -1
  store i8* %109, i8** %8, align 8
  br label %95

110:                                              ; preds = %105
  %111 = load i8*, i8** %8, align 8
  %112 = load i8, i8* %111, align 1
  %113 = call i32 @ISALNUM(i8 zeroext %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %124, label %115

115:                                              ; preds = %110
  %116 = load i64, i64* @verbose, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load i32, i32* @stderr, align 4
  %120 = load i8*, i8** @progname, align 8
  %121 = load i8*, i8** %5, align 8
  %122 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %119, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %120, i8* %121)
  br label %123

123:                                              ; preds = %118, %115
  store i32 0, i32* %4, align 4
  br label %180

124:                                              ; preds = %110
  %125 = load i8*, i8** %8, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  store i8* %126, i8** %14, align 8
  br label %127

127:                                              ; preds = %132, %124
  %128 = load i8*, i8** %8, align 8
  %129 = load i8, i8* %128, align 1
  %130 = call i64 @ISIDNUM(i8 signext %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i8*, i8** %8, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 -1
  store i8* %134, i8** %8, align 8
  br label %127

135:                                              ; preds = %127
  %136 = load i8*, i8** %8, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  store i8* %137, i8** %13, align 8
  br label %138

138:                                              ; preds = %150, %135
  %139 = load i8*, i8** %8, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 32
  br i1 %142, label %148, label %143

143:                                              ; preds = %138
  %144 = load i8*, i8** %8, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 9
  br label %148

148:                                              ; preds = %143, %138
  %149 = phi i1 [ true, %138 ], [ %147, %143 ]
  br i1 %149, label %150, label %153

150:                                              ; preds = %148
  %151 = load i8*, i8** %8, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 -1
  store i8* %152, i8** %8, align 8
  br label %138

153:                                              ; preds = %148
  %154 = load i8*, i8** %8, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 1
  store i8 0, i8* %155, align 1
  %156 = load i8*, i8** %11, align 8
  store i8 0, i8* %156, align 1
  %157 = load i8*, i8** %14, align 8
  store i8 0, i8* %157, align 1
  %158 = load i8*, i8** %5, align 8
  store i8* %158, i8** %12, align 8
  %159 = load i8*, i8** %12, align 8
  %160 = call i64 @strncmp(i8* %159, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %153
  store i32 0, i32* %4, align 4
  br label %180

163:                                              ; preds = %153
  %164 = load i8*, i8** %12, align 8
  %165 = call i64 @strncmp(i8* %164, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load i8*, i8** %12, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 7
  store i8* %169, i8** %12, align 8
  br label %170

170:                                              ; preds = %167, %163
  %171 = load i8*, i8** %13, align 8
  %172 = load %struct.fn_decl*, %struct.fn_decl** %7, align 8
  %173 = getelementptr inbounds %struct.fn_decl, %struct.fn_decl* %172, i32 0, i32 0
  store i8* %171, i8** %173, align 8
  %174 = load i8*, i8** %12, align 8
  %175 = load %struct.fn_decl*, %struct.fn_decl** %7, align 8
  %176 = getelementptr inbounds %struct.fn_decl, %struct.fn_decl* %175, i32 0, i32 1
  store i8* %174, i8** %176, align 8
  %177 = load i8*, i8** %10, align 8
  %178 = load %struct.fn_decl*, %struct.fn_decl** %7, align 8
  %179 = getelementptr inbounds %struct.fn_decl, %struct.fn_decl* %178, i32 0, i32 2
  store i8* %177, i8** %179, align 8
  store i32 1, i32* %4, align 4
  br label %180

180:                                              ; preds = %170, %162, %123, %64, %39
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @ISALNUM(i8 zeroext) #1

declare dso_local i64 @ISIDNUM(i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
