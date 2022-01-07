; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dma/extr_mail.c_bounce.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dma/extr_mail.c_bounce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.qitem = type { i64*, i8*, i32 }
%struct.queue = type { i8*, i8*, i32, i32 }

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"can not bounce a bounce message, discarding\00", align 1
@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EXPAND_WILDCARD = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"delivery failed, bouncing as %s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [245 x i8] c"Received: from MAILER-DAEMON\0A\09id %s\0A\09by %s (%s);\0A\09%s\0AX-Original-To: <%s>\0AFrom: MAILER-DAEMON <>\0ATo: %s\0ASubject: Mail delivery failed\0AMessage-Id: <%s@%s>\0ADate: %s\0A\0AThis is the %s at %s.\0A\0AThere was an error delivering your mail to <%s>.\0A\0A%s\0A\0A%s\0A\0A\00", align 1
@VERSION = common dso_local global i8* null, align 8
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@FULLBOUNCE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Original message follows.\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Message headers follow.\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@LOG_CRIT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"error creating bounce: %m\00", align 1
@EX_IOERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bounce(%struct.qitem* %0, i8* %1) #0 {
  %3 = alloca %struct.qitem*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.queue, align 8
  %6 = alloca [1000 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.qitem* %0, %struct.qitem** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.qitem*, %struct.qitem** %3, align 8
  %10 = getelementptr inbounds %struct.qitem, %struct.qitem* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* @LOG_INFO, align 4
  %17 = call i32 (i32, i8*, ...) @syslog(i32 %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EX_SOFTWARE, align 4
  %19 = call i32 @exit(i32 %18) #3
  unreachable

20:                                               ; preds = %2
  %21 = call i32 @bzero(%struct.queue* %5, i32 24)
  %22 = getelementptr inbounds %struct.queue, %struct.queue* %5, i32 0, i32 3
  %23 = call i32 @LIST_INIT(i32* %22)
  %24 = getelementptr inbounds %struct.queue, %struct.queue* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %24, align 8
  %25 = load %struct.qitem*, %struct.qitem** %3, align 8
  %26 = getelementptr inbounds %struct.qitem, %struct.qitem* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* @EXPAND_WILDCARD, align 4
  %29 = call i64 @add_recp(%struct.queue* %5, i64* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %152

32:                                               ; preds = %20
  %33 = call i64 @newspoolf(%struct.queue* %5)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %152

36:                                               ; preds = %32
  %37 = load i32, i32* @LOG_ERR, align 4
  %38 = getelementptr inbounds %struct.queue, %struct.queue* %5, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (i32, i8*, ...) @syslog(i32 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  %41 = getelementptr inbounds %struct.queue, %struct.queue* %5, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @setlogident(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %42)
  %44 = getelementptr inbounds %struct.queue, %struct.queue* %5, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.queue, %struct.queue* %5, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i8* (...) @hostname()
  %49 = load i8*, i8** @VERSION, align 8
  %50 = call i8* (...) @rfc822date()
  %51 = load %struct.qitem*, %struct.qitem** %3, align 8
  %52 = getelementptr inbounds %struct.qitem, %struct.qitem* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.qitem*, %struct.qitem** %3, align 8
  %55 = getelementptr inbounds %struct.qitem, %struct.qitem* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds %struct.queue, %struct.queue* %5, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* (...) @hostname()
  %60 = call i8* (...) @rfc822date()
  %61 = load i8*, i8** @VERSION, align 8
  %62 = call i8* (...) @hostname()
  %63 = load %struct.qitem*, %struct.qitem** %3, align 8
  %64 = getelementptr inbounds %struct.qitem, %struct.qitem* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 4
  %68 = load i32, i32* @FULLBOUNCE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0)
  %73 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([245 x i8], [245 x i8]* @.str.4, i64 0, i64 0), i8* %47, i8* %48, i8* %49, i8* %50, i8* %53, i64* %56, i8* %58, i8* %59, i8* %60, i8* %61, i8* %62, i8* %65, i8* %66, i8* %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %36
  br label %152

77:                                               ; preds = %36
  %78 = load %struct.qitem*, %struct.qitem** %3, align 8
  %79 = getelementptr inbounds %struct.qitem, %struct.qitem* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @SEEK_SET, align 4
  %82 = call i64 @fseek(i32 %80, i32 0, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %152

85:                                               ; preds = %77
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 4
  %87 = load i32, i32* @FULLBOUNCE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %111

90:                                               ; preds = %85
  br label %91

91:                                               ; preds = %109, %90
  %92 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %93 = load %struct.qitem*, %struct.qitem** %3, align 8
  %94 = getelementptr inbounds %struct.qitem, %struct.qitem* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @fread(i8* %92, i32 1, i32 1000, i32 %95)
  store i64 %96, i64* %7, align 8
  %97 = icmp ugt i64 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %91
  %99 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %100 = load i64, i64* %7, align 8
  %101 = trunc i64 %100 to i32
  %102 = getelementptr inbounds %struct.queue, %struct.queue* %5, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @fwrite(i8* %99, i32 1, i32 %101, i32 %103)
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %7, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %98
  br label %152

109:                                              ; preds = %98
  br label %91

110:                                              ; preds = %91
  br label %144

111:                                              ; preds = %85
  br label %112

112:                                              ; preds = %142, %111
  %113 = load %struct.qitem*, %struct.qitem** %3, align 8
  %114 = getelementptr inbounds %struct.qitem, %struct.qitem* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @feof(i32 %115)
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  br i1 %118, label %119, label %143

119:                                              ; preds = %112
  %120 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %121 = load %struct.qitem*, %struct.qitem** %3, align 8
  %122 = getelementptr inbounds %struct.qitem, %struct.qitem* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32* @fgets(i8* %120, i32 1000, i32 %123)
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  br label %143

127:                                              ; preds = %119
  %128 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %129 = load i8, i8* %128, align 16
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 10
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %143

133:                                              ; preds = %127
  %134 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %135 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %136 = call i32 @strlen(i8* %135)
  %137 = getelementptr inbounds %struct.queue, %struct.queue* %5, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @fwrite(i8* %134, i32 %136, i32 1, i32 %138)
  %140 = icmp ne i32 %139, 1
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  br label %152

142:                                              ; preds = %133
  br label %112

143:                                              ; preds = %132, %126, %112
  br label %144

144:                                              ; preds = %143, %110
  %145 = call i64 @linkspool(%struct.queue* %5)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  br label %152

148:                                              ; preds = %144
  %149 = load %struct.qitem*, %struct.qitem** %3, align 8
  %150 = call i32 @delqueue(%struct.qitem* %149)
  %151 = call i32 @run_queue(%struct.queue* %5)
  br label %152

152:                                              ; preds = %148, %147, %141, %108, %84, %76, %35, %31
  %153 = load i32, i32* @LOG_CRIT, align 4
  %154 = call i32 (i32, i8*, ...) @syslog(i32 %153, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %155 = load %struct.qitem*, %struct.qitem** %3, align 8
  %156 = call i32 @delqueue(%struct.qitem* %155)
  %157 = load i32, i32* @EX_IOERR, align 4
  %158 = call i32 @exit(i32 %157) #3
  unreachable
}

declare dso_local i32 @syslog(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @bzero(%struct.queue*, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i64 @add_recp(%struct.queue*, i64*, i32) #1

declare dso_local i64 @newspoolf(%struct.queue*) #1

declare dso_local i32 @setlogident(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*, i8*, i8*, i64*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @hostname(...) #1

declare dso_local i8* @rfc822date(...) #1

declare dso_local i64 @fseek(i32, i32, i32) #1

declare dso_local i64 @fread(i8*, i32, i32, i32) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #1

declare dso_local i32 @feof(i32) #1

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @linkspool(%struct.queue*) #1

declare dso_local i32 @delqueue(%struct.qitem*) #1

declare dso_local i32 @run_queue(%struct.queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
