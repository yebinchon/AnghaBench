; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_stmt_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_stmt_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__*, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_11__*, %struct.TYPE_14__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64 }

@DTRACEACT_COMMIT = common dso_local global i64 0, align 8
@D_COMM_COMM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"commit( ) may not follow commit( )\0A\00", align 1
@D_COMM_DREC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"commit( ) may not follow data-recording action(s)\0A\00", align 1
@D_AGG_COMM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"aggregating actions may not follow commit( )\0A\00", align 1
@DTRACEACT_SPECULATE = common dso_local global i64 0, align 8
@D_SPEC_SPEC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"speculate( ) may not follow speculate( )\0A\00", align 1
@D_SPEC_COMM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"speculate( ) may not follow commit( )\0A\00", align 1
@D_SPEC_DREC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"speculate( ) may not follow data-recording action(s)\0A\00", align 1
@D_AGG_SPEC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"aggregating actions may not follow speculate( )\0A\00", align 1
@D_ACT_SPEC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [49 x i8] c"destructive actions may not follow speculate( )\0A\00", align 1
@DTRACEACT_EXIT = common dso_local global i64 0, align 8
@D_EXIT_SPEC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"exit( ) may not follow speculate( )\0A\00", align 1
@DTRACEACT_DISCARD = common dso_local global i64 0, align 8
@DTRACEACT_DIFEXPR = common dso_local global i64 0, align 8
@DIF_TYPE_CTF = common dso_local global i64 0, align 8
@D_DREC_COMM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [49 x i8] c"data-recording actions may not follow commit( )\0A\00", align 1
@yypcb = common dso_local global %struct.TYPE_15__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32*)* @dt_stmt_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_stmt_append(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %6, align 8
  br label %17

17:                                               ; preds = %172, %2
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %19 = icmp ne %struct.TYPE_14__* %18, null
  br i1 %19, label %20, label %176

20:                                               ; preds = %17
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DTRACEACT_COMMIT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %61

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @D_COMM_COMM, align 4
  %32 = call i32 @dnerror(i32* %30, i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @D_COMM_DREC, align 4
  %39 = call i32 @dnerror(i32* %37, i32 %38, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %36, %33
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %7, align 8
  br label %42

42:                                               ; preds = %56, %40
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %44 = icmp ne %struct.TYPE_14__* %43, null
  br i1 %44, label %45, label %60

45:                                               ; preds = %42
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @DTRACEACT_ISAGG(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  br label %56

52:                                               ; preds = %45
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* @D_AGG_COMM, align 4
  %55 = call i32 @dnerror(i32* %53, i32 %54, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %52, %51
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  store %struct.TYPE_14__* %59, %struct.TYPE_14__** %7, align 8
  br label %42

60:                                               ; preds = %42
  store i32 1, i32* %8, align 4
  br label %172

61:                                               ; preds = %20
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DTRACEACT_SPECULATE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %89

67:                                               ; preds = %61
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* @D_SPEC_SPEC, align 4
  %73 = call i32 @dnerror(i32* %71, i32 %72, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %70, %67
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* @D_SPEC_COMM, align 4
  %80 = call i32 @dnerror(i32* %78, i32 %79, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %81

81:                                               ; preds = %77, %74
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* @D_SPEC_DREC, align 4
  %87 = call i32 @dnerror(i32* %85, i32 %86, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  br label %88

88:                                               ; preds = %84, %81
  store i32 1, i32* %9, align 4
  br label %172

89:                                               ; preds = %61
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @DTRACEACT_ISAGG(i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %89
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32*, i32** %4, align 8
  %100 = load i32, i32* @D_AGG_SPEC, align 4
  %101 = call i32 @dnerror(i32* %99, i32 %100, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  br label %102

102:                                              ; preds = %98, %95
  store i32 1, i32* %10, align 4
  br label %172

103:                                              ; preds = %89
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %125

106:                                              ; preds = %103
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %108 = call i64 @dt_action_destructive(%struct.TYPE_14__* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load i32*, i32** %4, align 8
  %112 = load i32, i32* @D_ACT_SPEC, align 4
  %113 = call i32 @dnerror(i32* %111, i32 %112, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  br label %114

114:                                              ; preds = %110, %106
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @DTRACEACT_EXIT, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load i32*, i32** %4, align 8
  %122 = load i32, i32* @D_EXIT_SPEC, align 4
  %123 = call i32 @dnerror(i32* %121, i32 %122, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %124

124:                                              ; preds = %120, %114
  br label %125

125:                                              ; preds = %124, %103
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %127 = call i64 @dt_action_destructive(%struct.TYPE_14__* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %125
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @DTRACEACT_DISCARD, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %129, %125
  br label %172

136:                                              ; preds = %129
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @DTRACEACT_DIFEXPR, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %160

142:                                              ; preds = %136
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @DIF_TYPE_CTF, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %142
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %151
  br label %172

160:                                              ; preds = %151, %142, %136
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %160
  %164 = load i32*, i32** %4, align 8
  %165 = load i32, i32* @D_DREC_COMM, align 4
  %166 = call i32 @dnerror(i32* %164, i32 %165, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0))
  br label %167

167:                                              ; preds = %163, %160
  %168 = load i32, i32* %9, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %167
  store i32 1, i32* %10, align 4
  br label %171

171:                                              ; preds = %170, %167
  br label %172

172:                                              ; preds = %171, %159, %135, %102, %88, %60
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %174, align 8
  store %struct.TYPE_14__* %175, %struct.TYPE_14__** %6, align 8
  br label %17

176:                                              ; preds = %17
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** @yypcb, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** @yypcb, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %184 = call i64 @dtrace_stmt_add(i32 %179, i32 %182, %struct.TYPE_12__* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %176
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** @yypcb, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** @yypcb, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @dtrace_errno(i32 %192)
  %194 = call i32 @longjmp(i32 %189, i32 %193)
  br label %195

195:                                              ; preds = %186, %176
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** @yypcb, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %197, align 8
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %200 = icmp eq %struct.TYPE_12__* %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %195
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** @yypcb, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 0
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %203, align 8
  br label %204

204:                                              ; preds = %201, %195
  ret void
}

declare dso_local i32 @dnerror(i32*, i32, i8*) #1

declare dso_local i64 @DTRACEACT_ISAGG(i64) #1

declare dso_local i64 @dt_action_destructive(%struct.TYPE_14__*) #1

declare dso_local i64 @dtrace_stmt_add(i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @dtrace_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
