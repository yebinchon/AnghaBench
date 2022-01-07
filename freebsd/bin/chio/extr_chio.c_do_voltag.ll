; ModuleID = '/home/carl/AnghaBench/freebsd/bin/chio/extr_chio.c_do_voltag.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/chio/extr_chio.c_do_voltag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.changer_set_voltag_request = type { i32, %struct.TYPE_2__, i8*, i32 }
%struct.TYPE_2__ = type { i8*, i64 }

@optreset = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"fca\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%s: bad option\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: missing element specification\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%s: missing argument\00", align 1
@CSVR_MODE_REPLACE = common dso_local global i32 0, align 4
@CSVR_MODE_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"%s: volume label too long\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"%s: unexpected argument\00", align 1
@CSVR_MODE_CLEAR = common dso_local global i32 0, align 4
@CSVR_ALTERNATE = common dso_local global i32 0, align 4
@changer_fd = common dso_local global i32 0, align 4
@CHIOSETVOLTAG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"%s: CHIOSETVOLTAG\00", align 1
@changer_name = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [51 x i8] c"usage: %s %s [-fca] <element> [<voltag> [<vsn>] ]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**)* @do_voltag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_voltag(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.changer_set_voltag_request, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = call i32 @bzero(%struct.changer_set_voltag_request* %12, i32 40)
  store i32 1, i32* @optreset, align 4
  store i32 1, i32* @optind, align 4
  br label %14

14:                                               ; preds = %27, %3
  %15 = load i32, i32* %6, align 4
  %16 = load i8**, i8*** %7, align 8
  %17 = call i32 @getopt(i32 %15, i8** %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %11, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load i32, i32* %11, align 4
  switch i32 %20, label %24 [
    i32 102, label %21
    i32 99, label %22
    i32 97, label %23
  ]

21:                                               ; preds = %19
  store i32 1, i32* %8, align 4
  br label %27

22:                                               ; preds = %19
  store i32 1, i32* %9, align 4
  br label %27

23:                                               ; preds = %19
  store i32 1, i32* %10, align 4
  br label %27

24:                                               ; preds = %19
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @warnx(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %129

27:                                               ; preds = %23, %22, %21
  br label %14

28:                                               ; preds = %14
  %29 = load i32, i32* @optind, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @optind, align 4
  %33 = load i8**, i8*** %7, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  store i8** %35, i8*** %7, align 8
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  br label %129

41:                                               ; preds = %28
  %42 = load i8**, i8*** %7, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @parse_element_type(i8* %44)
  %46 = getelementptr inbounds %struct.changer_set_voltag_request, %struct.changer_set_voltag_request* %12, i32 0, i32 3
  store i32 %45, i32* %46, align 8
  %47 = load i8**, i8*** %7, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @atol(i8* %49)
  %51 = inttoptr i64 %50 to i8*
  %52 = getelementptr inbounds %struct.changer_set_voltag_request, %struct.changer_set_voltag_request* %12, i32 0, i32 2
  store i8* %51, i8** %52, align 8
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %103, label %55

55:                                               ; preds = %41
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 3
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = icmp sgt i32 %59, 4
  br i1 %60, label %61, label %64

61:                                               ; preds = %58, %55
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  br label %129

64:                                               ; preds = %58
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* @CSVR_MODE_REPLACE, align 4
  %69 = getelementptr inbounds %struct.changer_set_voltag_request, %struct.changer_set_voltag_request* %12, i32 0, i32 0
  store i32 %68, i32* %69, align 8
  br label %73

70:                                               ; preds = %64
  %71 = load i32, i32* @CSVR_MODE_SET, align 4
  %72 = getelementptr inbounds %struct.changer_set_voltag_request, %struct.changer_set_voltag_request* %12, i32 0, i32 0
  store i32 %71, i32* %72, align 8
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i8**, i8*** %7, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 2
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strlen(i8* %76)
  %78 = sext i32 %77 to i64
  %79 = icmp ugt i64 %78, 8
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %81)
  br label %129

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct.changer_set_voltag_request, %struct.changer_set_voltag_request* %12, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i8*
  %88 = load i8**, i8*** %7, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 2
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @strlcpy(i8* %87, i8* %90, i32 8)
  %92 = load i32, i32* %6, align 4
  %93 = icmp eq i32 %92, 4
  br i1 %93, label %94, label %102

94:                                               ; preds = %83
  %95 = load i8**, i8*** %7, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 3
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @atol(i8* %97)
  %99 = inttoptr i64 %98 to i8*
  %100 = getelementptr inbounds %struct.changer_set_voltag_request, %struct.changer_set_voltag_request* %12, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  br label %102

102:                                              ; preds = %94, %83
  br label %112

103:                                              ; preds = %41
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 2
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i8*, i8** %5, align 8
  %108 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %107)
  br label %129

109:                                              ; preds = %103
  %110 = load i32, i32* @CSVR_MODE_CLEAR, align 4
  %111 = getelementptr inbounds %struct.changer_set_voltag_request, %struct.changer_set_voltag_request* %12, i32 0, i32 0
  store i32 %110, i32* %111, align 8
  br label %112

112:                                              ; preds = %109, %102
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i32, i32* @CSVR_ALTERNATE, align 4
  %117 = getelementptr inbounds %struct.changer_set_voltag_request, %struct.changer_set_voltag_request* %12, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %116
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %115, %112
  %121 = load i32, i32* @changer_fd, align 4
  %122 = load i32, i32* @CHIOSETVOLTAG, align 4
  %123 = call i64 @ioctl(i32 %121, i32 %122, %struct.changer_set_voltag_request* %12)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i32, i32* @changer_name, align 4
  %127 = call i32 @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %125, %120
  store i32 0, i32* %4, align 4
  br label %134

129:                                              ; preds = %106, %80, %61, %38, %24
  %130 = load i32, i32* @stderr, align 4
  %131 = call i8* (...) @getprogname()
  %132 = load i8*, i8** %5, align 8
  %133 = call i32 @fprintf(i32 %130, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i8* %131, i8* %132)
  store i32 1, i32* %4, align 4
  br label %134

134:                                              ; preds = %129, %128
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @bzero(%struct.changer_set_voltag_request*, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @parse_element_type(i8*) #1

declare dso_local i64 @atol(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.changer_set_voltag_request*) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @getprogname(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
