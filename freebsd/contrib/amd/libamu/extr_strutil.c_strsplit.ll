; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_strutil.c_strsplit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_strutil.c_strsplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@D_STR = common dso_local global i32 0, align 4
@XLOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"strsplit saved \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"strsplit saved a total of %d strings\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @strsplit(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 8
  %15 = trunc i64 %14 to i32
  %16 = call i64 @xmalloc(i32 %15)
  %17 = inttoptr i64 %16 to i8**
  store i8** %17, i8*** %7, align 8
  br label %18

18:                                               ; preds = %167, %3
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %168

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %56, %22
  %24 = load i8*, i8** %4, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 32
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load i8*, i8** %4, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call i64 @isascii(i8 zeroext %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i8*, i8** %4, align 8
  %38 = load i8, i8* %37, align 1
  %39 = call i64 @isspace(i8 zeroext %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi i1 [ false, %31 ], [ %40, %36 ]
  %43 = zext i1 %42 to i32
  br label %51

44:                                               ; preds = %28
  %45 = load i8*, i8** %4, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  br label %51

51:                                               ; preds = %44, %41
  %52 = phi i32 [ %43, %41 ], [ %50, %44 ]
  %53 = icmp ne i32 %52, 0
  br label %54

54:                                               ; preds = %51, %23
  %55 = phi i1 [ false, %23 ], [ %53, %51 ]
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %4, align 8
  store i8 0, i8* %57, align 1
  br label %23

59:                                               ; preds = %54
  %60 = load i8*, i8** %4, align 8
  %61 = load i8, i8* %60, align 1
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  br label %168

64:                                               ; preds = %59
  %65 = load i8*, i8** %4, align 8
  store i8* %65, i8** %10, align 8
  br label %66

66:                                               ; preds = %136, %64
  %67 = load i8*, i8** %4, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %66
  %72 = load i32, i32* %5, align 4
  %73 = icmp eq i32 %72, 32
  br i1 %73, label %74, label %87

74:                                               ; preds = %71
  %75 = load i8*, i8** %4, align 8
  %76 = load i8, i8* %75, align 1
  %77 = call i64 @isascii(i8 zeroext %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i8*, i8** %4, align 8
  %81 = load i8, i8* %80, align 1
  %82 = call i64 @isspace(i8 zeroext %81)
  %83 = icmp ne i64 %82, 0
  br label %84

84:                                               ; preds = %79, %74
  %85 = phi i1 [ false, %74 ], [ %83, %79 ]
  %86 = zext i1 %85 to i32
  br label %94

87:                                               ; preds = %71
  %88 = load i8*, i8** %4, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = load i32, i32* %5, align 4
  %92 = icmp eq i32 %90, %91
  %93 = zext i1 %92 to i32
  br label %94

94:                                               ; preds = %87, %84
  %95 = phi i32 [ %86, %84 ], [ %93, %87 ]
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  br label %98

98:                                               ; preds = %94, %66
  %99 = phi i1 [ false, %66 ], [ %97, %94 ]
  br i1 %99, label %100, label %137

100:                                              ; preds = %98
  %101 = load i8*, i8** %4, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %4, align 8
  %103 = load i8, i8* %101, align 1
  %104 = sext i8 %103 to i32
  %105 = load i32, i32* %6, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %136

107:                                              ; preds = %100
  %108 = load i8*, i8** %4, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %4, align 8
  br label %110

110:                                              ; preds = %123, %107
  %111 = load i8*, i8** %4, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load i8*, i8** %4, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %118, %119
  br label %121

121:                                              ; preds = %115, %110
  %122 = phi i1 [ false, %110 ], [ %120, %115 ]
  br i1 %122, label %123, label %126

123:                                              ; preds = %121
  %124 = load i8*, i8** %4, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %4, align 8
  br label %110

126:                                              ; preds = %121
  %127 = load i8*, i8** %4, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = load i32, i32* %6, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = load i8*, i8** %4, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %4, align 8
  br label %135

135:                                              ; preds = %132, %126
  br label %136

136:                                              ; preds = %135, %100
  br label %66

137:                                              ; preds = %98
  %138 = load i8*, i8** %4, align 8
  %139 = load i8, i8* %138, align 1
  %140 = icmp ne i8 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %137
  store i32 1, i32* %9, align 4
  br label %142

142:                                              ; preds = %141, %137
  %143 = load i8*, i8** %4, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %4, align 8
  store i8 0, i8* %143, align 1
  %145 = load i8*, i8** %10, align 8
  %146 = load i8**, i8*** %7, align 8
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i8*, i8** %146, i64 %149
  store i8* %145, i8** %150, align 8
  %151 = load i8**, i8*** %7, align 8
  %152 = ptrtoint i8** %151 to i32
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = mul i64 %155, 8
  %157 = trunc i64 %156 to i32
  %158 = call i64 @xrealloc(i32 %152, i32 %157)
  %159 = inttoptr i64 %158 to i8**
  store i8** %159, i8*** %7, align 8
  %160 = load i32, i32* @D_STR, align 4
  %161 = call i64 @amuDebug(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %142
  %164 = load i32, i32* @XLOG_DEBUG, align 4
  %165 = load i8*, i8** %10, align 8
  %166 = call i32 (i32, i8*, ...) @plog(i32 %164, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %165)
  br label %167

167:                                              ; preds = %163, %142
  br label %18

168:                                              ; preds = %63, %18
  %169 = load i32, i32* @D_STR, align 4
  %170 = call i64 @amuDebug(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %168
  %173 = load i32, i32* @XLOG_DEBUG, align 4
  %174 = load i32, i32* %8, align 4
  %175 = call i32 (i32, i8*, ...) @plog(i32 %173, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %172, %168
  %177 = load i8**, i8*** %7, align 8
  %178 = load i32, i32* %8, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8*, i8** %177, i64 %179
  store i8* null, i8** %180, align 8
  %181 = load i8**, i8*** %7, align 8
  ret i8** %181
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i64 @isascii(i8 zeroext) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64 @xrealloc(i32, i32) #1

declare dso_local i64 @amuDebug(i32) #1

declare dso_local i32 @plog(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
