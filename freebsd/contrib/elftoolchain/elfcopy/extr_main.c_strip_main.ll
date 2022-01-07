; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_main.c_strip_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_main.c_strip_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i32, i64 }
%struct.sec_action = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"hI:K:N:o:O:pR:sSdgVxXw\00", align 1
@strip_longopts = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@SEC_REMOVE = common dso_local global i32 0, align 4
@STRIP_ALL = common dso_local global i8* null, align 8
@STRIP_DEBUG = common dso_local global i64 0, align 8
@SYMOP_KEEP = common dso_local global i32 0, align 4
@SYMOP_STRIP = common dso_local global i32 0, align 4
@PRESERVE_DATE = common dso_local global i32 0, align 4
@WILDCARD = common dso_local global i32 0, align 4
@DISCARD_LOCAL = common dso_local global i32 0, align 4
@DISCARD_LLABEL = common dso_local global i32 0, align 4
@STRIP_NONDEBUG = common dso_local global i64 0, align 8
@STRIP_UNNEEDED = common dso_local global i64 0, align 8
@optind = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfcopy*, i32, i8**)* @strip_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @strip_main(%struct.elfcopy* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.elfcopy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.sec_action*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.elfcopy* %0, %struct.elfcopy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store i8* null, i8** %8, align 8
  br label %11

11:                                               ; preds = %93, %3
  %12 = load i32, i32* %5, align 4
  %13 = load i8**, i8*** %6, align 8
  %14 = load i32, i32* @strip_longopts, align 4
  %15 = call i32 @getopt_long(i32 %12, i8** %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %14, i32* null)
  store i32 %15, i32* %9, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %94

17:                                               ; preds = %11
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %91 [
    i32 82, label %19
    i32 115, label %30
    i32 83, label %35
    i32 103, label %35
    i32 100, label %35
    i32 73, label %39
    i32 75, label %40
    i32 78, label %45
    i32 111, label %50
    i32 79, label %52
    i32 112, label %56
    i32 86, label %62
    i32 119, label %64
    i32 120, label %70
    i32 88, label %76
    i32 129, label %82
    i32 128, label %86
    i32 104, label %90
  ]

19:                                               ; preds = %17
  %20 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %21 = load i8*, i8** @optarg, align 8
  %22 = call %struct.sec_action* @lookup_sec_act(%struct.elfcopy* %20, i8* %21, i32 1)
  store %struct.sec_action* %22, %struct.sec_action** %7, align 8
  %23 = load %struct.sec_action*, %struct.sec_action** %7, align 8
  %24 = getelementptr inbounds %struct.sec_action, %struct.sec_action* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* @SEC_REMOVE, align 4
  %26 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %27 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  br label %93

30:                                               ; preds = %17
  %31 = load i8*, i8** @STRIP_ALL, align 8
  %32 = ptrtoint i8* %31 to i64
  %33 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %34 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  br label %93

35:                                               ; preds = %17, %17, %17
  %36 = load i64, i64* @STRIP_DEBUG, align 8
  %37 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %38 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  br label %93

39:                                               ; preds = %17
  br label %93

40:                                               ; preds = %17
  %41 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %42 = load i8*, i8** @optarg, align 8
  %43 = load i32, i32* @SYMOP_KEEP, align 4
  %44 = call i32 @add_to_symop_list(%struct.elfcopy* %41, i8* %42, i32* null, i32 %43)
  br label %93

45:                                               ; preds = %17
  %46 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %47 = load i8*, i8** @optarg, align 8
  %48 = load i32, i32* @SYMOP_STRIP, align 4
  %49 = call i32 @add_to_symop_list(%struct.elfcopy* %46, i8* %47, i32* null, i32 %48)
  br label %93

50:                                               ; preds = %17
  %51 = load i8*, i8** @optarg, align 8
  store i8* %51, i8** %8, align 8
  br label %93

52:                                               ; preds = %17
  %53 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %54 = load i8*, i8** @optarg, align 8
  %55 = call i32 @set_output_target(%struct.elfcopy* %53, i8* %54)
  br label %93

56:                                               ; preds = %17
  %57 = load i32, i32* @PRESERVE_DATE, align 4
  %58 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %59 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %93

62:                                               ; preds = %17
  %63 = call i32 (...) @print_version()
  br label %93

64:                                               ; preds = %17
  %65 = load i32, i32* @WILDCARD, align 4
  %66 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %67 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %93

70:                                               ; preds = %17
  %71 = load i32, i32* @DISCARD_LOCAL, align 4
  %72 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %73 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %93

76:                                               ; preds = %17
  %77 = load i32, i32* @DISCARD_LLABEL, align 4
  %78 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %79 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %93

82:                                               ; preds = %17
  %83 = load i64, i64* @STRIP_NONDEBUG, align 8
  %84 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %85 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  br label %93

86:                                               ; preds = %17
  %87 = load i64, i64* @STRIP_UNNEEDED, align 8
  %88 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %89 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  br label %93

90:                                               ; preds = %17
  br label %91

91:                                               ; preds = %17, %90
  %92 = call i32 (...) @strip_usage()
  br label %93

93:                                               ; preds = %91, %86, %82, %76, %70, %64, %62, %56, %52, %50, %45, %40, %39, %35, %30, %19
  br label %11

94:                                               ; preds = %11
  %95 = load i64, i64* @optind, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = sub nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %5, align 4
  %100 = load i64, i64* @optind, align 8
  %101 = load i8**, i8*** %6, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 %100
  store i8** %102, i8*** %6, align 8
  %103 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %104 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %131

107:                                              ; preds = %94
  %108 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %109 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @DISCARD_LOCAL, align 4
  %112 = and i32 %110, %111
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %131

114:                                              ; preds = %107
  %115 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %116 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @DISCARD_LLABEL, align 4
  %119 = and i32 %117, %118
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %114
  %122 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %123 = load i32, i32* @SYMOP_STRIP, align 4
  %124 = call i32* @lookup_symop_list(%struct.elfcopy* %122, i32* null, i32 %123)
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load i8*, i8** @STRIP_ALL, align 8
  %128 = ptrtoint i8* %127 to i64
  %129 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %130 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %129, i32 0, i32 1
  store i64 %128, i64* %130, align 8
  br label %131

131:                                              ; preds = %126, %121, %114, %107, %94
  %132 = load i32, i32* %5, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = call i32 (...) @strip_usage()
  br label %136

136:                                              ; preds = %134, %131
  %137 = load i8*, i8** %8, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load i32, i32* %5, align 4
  %141 = icmp ne i32 %140, 1
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = call i32 (...) @strip_usage()
  br label %144

144:                                              ; preds = %142, %139, %136
  store i32 0, i32* %10, align 4
  br label %145

145:                                              ; preds = %158, %144
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %5, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %161

149:                                              ; preds = %145
  %150 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %151 = load i8**, i8*** %6, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %151, i64 %153
  %155 = load i8*, i8** %154, align 8
  %156 = load i8*, i8** %8, align 8
  %157 = call i32 @create_file(%struct.elfcopy* %150, i8* %155, i8* %156)
  br label %158

158:                                              ; preds = %149
  %159 = load i32, i32* %10, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %10, align 4
  br label %145

161:                                              ; preds = %145
  ret void
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local %struct.sec_action* @lookup_sec_act(%struct.elfcopy*, i8*, i32) #1

declare dso_local i32 @add_to_symop_list(%struct.elfcopy*, i8*, i32*, i32) #1

declare dso_local i32 @set_output_target(%struct.elfcopy*, i8*) #1

declare dso_local i32 @print_version(...) #1

declare dso_local i32 @strip_usage(...) #1

declare dso_local i32* @lookup_symop_list(%struct.elfcopy*, i32*, i32) #1

declare dso_local i32 @create_file(%struct.elfcopy*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
