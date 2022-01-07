; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_ctfconvert.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_ctfconvert.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@progname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"CTFCONVERT_DEBUG_LEVEL\00", align 1
@debug_level = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"CTFCONVERT_DEBUG_PARSE\00", align 1
@debug_parse = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c":l:L:o:givs\00", align 1
@EOF = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@CTF_DEFAULT_LABEL = common dso_local global i8* null, align 8
@outfile = common dso_local global i8* null, align 8
@CTF_USE_DYNSYM = common dso_local global i32 0, align 4
@dynsym = common dso_local global i32 0, align 4
@CTF_KEEP_STABS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"STRIPSTABS_KEEP_STABS\00", align 1
@optind = common dso_local global i32 0, align 4
@infile = common dso_local global i8* null, align 8
@R_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"Can't access %s\00", align 1
@terminate_cleanup = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@handle_sig = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"%s doesn't have type data to convert\0A\00", align 1
@CTF_LABEL_LASTIDX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c".ctf\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Couldn't rename temp file %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @basename(i8* %16)
  store i32 %17, i32* @progname, align 4
  %18 = call i8* @getenv(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = call i8* @getenv(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %22 = call i8* @atoi(i8* %21)
  store i8* %22, i8** @debug_level, align 8
  br label %23

23:                                               ; preds = %20, %2
  %24 = call i8* @getenv(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = call i8* @getenv(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i8* @atoi(i8* %27)
  store i8* %28, i8** @debug_parse, align 8
  br label %29

29:                                               ; preds = %26, %23
  br label %30

30:                                               ; preds = %58, %29
  %31 = load i32, i32* %4, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = call i32 @getopt(i32 %31, i8** %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* @EOF, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %30
  %37 = load i32, i32* %12, align 4
  switch i32 %37, label %55 [
    i32 108, label %38
    i32 76, label %40
    i32 111, label %47
    i32 115, label %49
    i32 105, label %51
    i32 103, label %52
    i32 118, label %54
  ]

38:                                               ; preds = %36
  %39 = load i8*, i8** @optarg, align 8
  store i8* %39, i8** %8, align 8
  br label %58

40:                                               ; preds = %36
  %41 = load i8*, i8** @optarg, align 8
  %42 = call i8* @getenv(i8* %41)
  store i8* %42, i8** %8, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i8*, i8** @CTF_DEFAULT_LABEL, align 8
  store i8* %45, i8** %8, align 8
  br label %46

46:                                               ; preds = %44, %40
  br label %58

47:                                               ; preds = %36
  %48 = load i8*, i8** @optarg, align 8
  store i8* %48, i8** @outfile, align 8
  br label %58

49:                                               ; preds = %36
  %50 = load i32, i32* @CTF_USE_DYNSYM, align 4
  store i32 %50, i32* @dynsym, align 4
  br label %58

51:                                               ; preds = %36
  store i32 1, i32* %10, align 4
  br label %58

52:                                               ; preds = %36
  %53 = load i32, i32* @CTF_KEEP_STABS, align 4
  store i32 %53, i32* %11, align 4
  br label %58

54:                                               ; preds = %36
  store i32 1, i32* %9, align 4
  br label %58

55:                                               ; preds = %36
  %56 = call i32 (...) @usage()
  %57 = call i32 @exit(i32 2) #3
  unreachable

58:                                               ; preds = %54, %52, %51, %49, %47, %46, %38
  br label %30

59:                                               ; preds = %30
  %60 = call i8* @getenv(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @CTF_KEEP_STABS, align 4
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %62, %59
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @optind, align 4
  %67 = sub nsw i32 %65, %66
  %68 = icmp ne i32 %67, 1
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load i8*, i8** %8, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69, %64
  %73 = call i32 (...) @usage()
  %74 = call i32 @exit(i32 2) #3
  unreachable

75:                                               ; preds = %69
  %76 = load i8**, i8*** %5, align 8
  %77 = load i32, i32* @optind, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** @infile, align 8
  %81 = load i8*, i8** @infile, align 8
  %82 = load i32, i32* @R_OK, align 4
  %83 = call i64 @access(i8* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %75
  %86 = load i8*, i8** @infile, align 8
  %87 = call i32 @terminate(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %85, %75
  %89 = load i32, i32* @terminate_cleanup, align 4
  %90 = call i32 @set_terminate_cleanup(i32 %89)
  %91 = load i32, i32* @SIGINT, align 4
  %92 = load i32, i32* @handle_sig, align 4
  %93 = call i32 @signal(i32 %91, i32 %92)
  %94 = load i32, i32* @SIGQUIT, align 4
  %95 = load i32, i32* @handle_sig, align 4
  %96 = call i32 @signal(i32 %94, i32 %95)
  %97 = load i32, i32* @SIGTERM, align 4
  %98 = load i32, i32* @handle_sig, align 4
  %99 = call i32 @signal(i32 %97, i32 %98)
  %100 = call %struct.TYPE_8__* (...) @tdata_new()
  store %struct.TYPE_8__* %100, %struct.TYPE_8__** %6, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %102 = load i8*, i8** @infile, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @file_read(%struct.TYPE_8__* %101, i8* %102, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %88
  %107 = load i8*, i8** @infile, align 8
  %108 = call i32 @terminate(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* %107)
  br label %109

109:                                              ; preds = %106, %88
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @iidesc_stats(i32 %115)
  br label %117

117:                                              ; preds = %112, %109
  %118 = call %struct.TYPE_8__* (...) @tdata_new()
  store %struct.TYPE_8__* %118, %struct.TYPE_8__** %7, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %121 = call i32 @merge_into_master(%struct.TYPE_8__* %119, %struct.TYPE_8__* %120, i32* null, i32 1)
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %123 = load i8*, i8** %8, align 8
  %124 = load i32, i32* @CTF_LABEL_LASTIDX, align 4
  %125 = call i32 @tdata_label_add(%struct.TYPE_8__* %122, i8* %123, i32 %124)
  %126 = load i8*, i8** @outfile, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %141

128:                                              ; preds = %117
  %129 = load i8*, i8** @infile, align 8
  %130 = load i8*, i8** @outfile, align 8
  %131 = call i64 @strcmp(i8* %129, i8* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %128
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %135 = load i8*, i8** @infile, align 8
  %136 = load i8*, i8** @outfile, align 8
  %137 = load i32, i32* @dynsym, align 4
  %138 = load i32, i32* %11, align 4
  %139 = or i32 %137, %138
  %140 = call i32 @write_ctf(%struct.TYPE_8__* %134, i8* %135, i8* %136, i32 %139)
  br label %161

141:                                              ; preds = %128, %117
  %142 = load i8*, i8** @infile, align 8
  %143 = call i8* @mktmpname(i8* %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i8* %143, i8** %13, align 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %145 = load i8*, i8** @infile, align 8
  %146 = load i8*, i8** %13, align 8
  %147 = load i32, i32* @dynsym, align 4
  %148 = load i32, i32* %11, align 4
  %149 = or i32 %147, %148
  %150 = call i32 @write_ctf(%struct.TYPE_8__* %144, i8* %145, i8* %146, i32 %149)
  %151 = load i8*, i8** %13, align 8
  %152 = load i8*, i8** @infile, align 8
  %153 = call i64 @rename(i8* %151, i8* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %141
  %156 = load i8*, i8** %13, align 8
  %157 = call i32 @terminate(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %156)
  br label %158

158:                                              ; preds = %155, %141
  %159 = load i8*, i8** %13, align 8
  %160 = call i32 @free(i8* %159)
  br label %161

161:                                              ; preds = %158, %133
  ret i32 0
}

declare dso_local i32 @basename(i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @terminate(i8*, i8*) #1

declare dso_local i32 @set_terminate_cleanup(i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local %struct.TYPE_8__* @tdata_new(...) #1

declare dso_local i32 @file_read(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @iidesc_stats(i32) #1

declare dso_local i32 @merge_into_master(%struct.TYPE_8__*, %struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @tdata_label_add(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @write_ctf(%struct.TYPE_8__*, i8*, i8*, i32) #1

declare dso_local i8* @mktmpname(i8*, i8*) #1

declare dso_local i64 @rename(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
