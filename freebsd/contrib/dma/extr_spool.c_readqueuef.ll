; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dma/extr_spool.c_readqueuef.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dma/extr_spool.c_readqueuef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qitem = type { i8*, i8*, i8* }
%struct.queue = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ID\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Sender\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Recipient\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"ignoring unknown queue info `%s' in `%s'\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"malformed queue file `%s'\00", align 1
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qitem* (%struct.queue*, i8*)* @readqueuef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qitem* @readqueuef(%struct.queue* %0, i8* %1) #0 {
  %3 = alloca %struct.queue*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1000 x i8], align 16
  %6 = alloca %struct.queue, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.qitem*, align 8
  store %struct.queue* %0, %struct.queue** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %7, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store %struct.qitem* null, %struct.qitem** %12, align 8
  %13 = call i32 @bzero(%struct.queue* %6, i32 4)
  %14 = getelementptr inbounds %struct.queue, %struct.queue* %6, i32 0, i32 0
  %15 = call i32 @LIST_INIT(i32* %14)
  %16 = load i8*, i8** %4, align 8
  %17 = call i32* @fopen(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %142

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %94, %21
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @feof(i32* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %95

27:                                               ; preds = %22
  %28 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i64 0, i64 0
  %29 = load i32*, i32** %7, align 8
  %30 = call i32* @fgets(i8* %28, i32 1000, i32* %29)
  %31 = icmp eq i32* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i64 0, i64 0
  %34 = load i8, i8* %33, align 16
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %27
  br label %95

38:                                               ; preds = %32
  %39 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i64 0, i64 0
  %40 = call i32 @strlen(i8* %39)
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i64 0, i64 %42
  store i8 0, i8* %43, align 1
  %44 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i64 0, i64 0
  %45 = call i8* @strchr(i8* %44, i8 signext 58)
  store i8* %45, i8** %8, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %115

49:                                               ; preds = %38
  %50 = load i8*, i8** %8, align 8
  store i8 0, i8* %50, align 1
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %8, align 8
  br label %53

53:                                               ; preds = %58, %49
  %54 = load i8*, i8** %8, align 8
  %55 = load i8, i8* %54, align 1
  %56 = call i64 @isspace(i8 signext %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %8, align 8
  br label %53

61:                                               ; preds = %53
  %62 = load i8*, i8** %8, align 8
  %63 = call i8* @strdup(i8* %62)
  store i8* %63, i8** %8, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %115

67:                                               ; preds = %61
  %68 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i64 0, i64 0
  %69 = call i64 @strcmp(i8* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i8*, i8** %8, align 8
  store i8* %72, i8** %9, align 8
  br label %94

73:                                               ; preds = %67
  %74 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i64 0, i64 0
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i8*, i8** %8, align 8
  store i8* %78, i8** %10, align 8
  br label %93

79:                                               ; preds = %73
  %80 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i64 0, i64 0
  %81 = call i64 @strcmp(i8* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i8*, i8** %8, align 8
  store i8* %84, i8** %11, align 8
  br label %92

85:                                               ; preds = %79
  %86 = load i32, i32* @LOG_DEBUG, align 4
  %87 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i64 0, i64 0
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %86, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %87, i8* %88)
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @free(i8* %90)
  br label %92

92:                                               ; preds = %85, %83
  br label %93

93:                                               ; preds = %92, %77
  br label %94

94:                                               ; preds = %93, %71
  br label %22

95:                                               ; preds = %37, %22
  %96 = load i8*, i8** %9, align 8
  %97 = icmp eq i8* %96, null
  br i1 %97, label %114, label %98

98:                                               ; preds = %95
  %99 = load i8*, i8** %10, align 8
  %100 = icmp eq i8* %99, null
  br i1 %100, label %114, label %101

101:                                              ; preds = %98
  %102 = load i8*, i8** %11, align 8
  %103 = icmp eq i8* %102, null
  br i1 %103, label %114, label %104

104:                                              ; preds = %101
  %105 = load i8*, i8** %9, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = load i8*, i8** %11, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %109, %104, %101, %98, %95
  br label %115

115:                                              ; preds = %114, %66, %48
  %116 = load i32, i32* @EINVAL, align 4
  store i32 %116, i32* @errno, align 4
  %117 = load i32, i32* @LOG_ERR, align 4
  %118 = load i8*, i8** %4, align 8
  %119 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %117, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %118)
  br label %142

120:                                              ; preds = %109
  %121 = load i8*, i8** %11, align 8
  %122 = call i64 @add_recp(%struct.queue* %6, i8* %121, i32 0)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  br label %142

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.queue, %struct.queue* %6, i32 0, i32 0
  %127 = call %struct.qitem* @LIST_FIRST(i32* %126)
  store %struct.qitem* %127, %struct.qitem** %12, align 8
  %128 = load i8*, i8** %10, align 8
  %129 = load %struct.qitem*, %struct.qitem** %12, align 8
  %130 = getelementptr inbounds %struct.qitem, %struct.qitem* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  store i8* null, i8** %10, align 8
  %131 = load i8*, i8** %9, align 8
  %132 = load %struct.qitem*, %struct.qitem** %12, align 8
  %133 = getelementptr inbounds %struct.qitem, %struct.qitem* %132, i32 0, i32 1
  store i8* %131, i8** %133, align 8
  store i8* null, i8** %9, align 8
  %134 = load i8*, i8** %4, align 8
  %135 = load %struct.qitem*, %struct.qitem** %12, align 8
  %136 = getelementptr inbounds %struct.qitem, %struct.qitem* %135, i32 0, i32 2
  store i8* %134, i8** %136, align 8
  store i8* null, i8** %4, align 8
  %137 = load %struct.queue*, %struct.queue** %3, align 8
  %138 = getelementptr inbounds %struct.queue, %struct.queue* %137, i32 0, i32 0
  %139 = load %struct.qitem*, %struct.qitem** %12, align 8
  %140 = load i32, i32* @next, align 4
  %141 = call i32 @LIST_INSERT_HEAD(i32* %138, %struct.qitem* %139, i32 %140)
  br label %142

142:                                              ; preds = %125, %124, %115, %20
  %143 = load i8*, i8** %10, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i8*, i8** %10, align 8
  %147 = call i32 @free(i8* %146)
  br label %148

148:                                              ; preds = %145, %142
  %149 = load i8*, i8** %9, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i8*, i8** %9, align 8
  %153 = call i32 @free(i8* %152)
  br label %154

154:                                              ; preds = %151, %148
  %155 = load i8*, i8** %11, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i8*, i8** %11, align 8
  %159 = call i32 @free(i8* %158)
  br label %160

160:                                              ; preds = %157, %154
  %161 = load i32*, i32** %7, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i32*, i32** %7, align 8
  %165 = call i32 @fclose(i32* %164)
  br label %166

166:                                              ; preds = %163, %160
  %167 = load %struct.qitem*, %struct.qitem** %12, align 8
  ret %struct.qitem* %167
}

declare dso_local i32 @bzero(%struct.queue*, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @syslog(i32, i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @add_recp(%struct.queue*, i8*, i32) #1

declare dso_local %struct.qitem* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.qitem*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
