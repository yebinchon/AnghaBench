; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_catch_command_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_catch_command_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"Catch requires an event name.\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"catch requires an event\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Catch of signal not yet implemented\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"catch\00", align 1
@EX_EVENT_CATCH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"throw\00", align 1
@EX_EVENT_THROW = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"thread_start\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Catch of thread_start not yet implemented\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"thread_exit\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"Catch of thread_exit not yet implemented\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"thread_join\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"Catch of thread_join not yet implemented\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Catch of start not yet implemented\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"Catch of exit not yet implemented\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@catch_fork = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"vfork\00", align 1
@catch_vfork = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"unload\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"Catch of stop not yet implemented\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"Unknown event kind specified for catch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @catch_command_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @catch_command_1(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %3
  %16 = load i8*, i8** %7, align 8
  %17 = call i8* @ep_find_event_name_end(i8* %16)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %15
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8*, i8** %7, align 8
  %26 = ptrtoint i8* %24 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %9, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @strncmp(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %174

36:                                               ; preds = %22
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @strncmp(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i32, i32* @EX_EVENT_CATCH, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @catch_exception_command_1(i32 %42, i8* %44, i32 %45, i32 %46)
  br label %173

48:                                               ; preds = %36
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @strncmp(i8* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i32, i32* @EX_EVENT_THROW, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @catch_exception_command_1(i32 %54, i8* %56, i32 %57, i32 %58)
  br label %172

60:                                               ; preds = %48
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i64 @strncmp(i8* %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  br label %171

67:                                               ; preds = %60
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i64 @strncmp(i8* %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  br label %170

74:                                               ; preds = %67
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i64 @strncmp(i8* %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  br label %169

81:                                               ; preds = %74
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i64 @strncmp(i8* %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  br label %168

88:                                               ; preds = %81
  %89 = load i8*, i8** %7, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i64 @strncmp(i8* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0))
  br label %167

95:                                               ; preds = %88
  %96 = load i8*, i8** %7, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i64 @strncmp(i8* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 %97)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = load i32, i32* @catch_fork, align 4
  %102 = load i8*, i8** %8, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @catch_fork_command_1(i32 %101, i8* %103, i32 %104, i32 %105)
  br label %166

107:                                              ; preds = %95
  %108 = load i8*, i8** %7, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i64 @strncmp(i8* %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 %109)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %107
  %113 = load i32, i32* @catch_vfork, align 4
  %114 = load i8*, i8** %8, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @catch_fork_command_1(i32 %113, i8* %115, i32 %116, i32 %117)
  br label %165

119:                                              ; preds = %107
  %120 = load i8*, i8** %7, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i64 @strncmp(i8* %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i32 %121)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load i8*, i8** %8, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @catch_exec_command_1(i8* %126, i32 %127, i32 %128)
  br label %164

130:                                              ; preds = %119
  %131 = load i8*, i8** %7, align 8
  %132 = load i32, i32* %9, align 4
  %133 = call i64 @strncmp(i8* %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i32 %132)
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %130
  %136 = load i8*, i8** %8, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @catch_load_command_1(i8* %137, i32 %138, i32 %139)
  br label %163

141:                                              ; preds = %130
  %142 = load i8*, i8** %7, align 8
  %143 = load i32, i32* %9, align 4
  %144 = call i64 @strncmp(i8* %142, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i32 %143)
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load i8*, i8** %8, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @catch_unload_command_1(i8* %148, i32 %149, i32 %150)
  br label %162

152:                                              ; preds = %141
  %153 = load i8*, i8** %7, align 8
  %154 = load i32, i32* %9, align 4
  %155 = call i64 @strncmp(i8* %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i32 %154)
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0))
  br label %161

159:                                              ; preds = %152
  %160 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0))
  br label %161

161:                                              ; preds = %159, %157
  br label %162

162:                                              ; preds = %161, %146
  br label %163

163:                                              ; preds = %162, %135
  br label %164

164:                                              ; preds = %163, %124
  br label %165

165:                                              ; preds = %164, %112
  br label %166

166:                                              ; preds = %165, %100
  br label %167

167:                                              ; preds = %166, %93
  br label %168

168:                                              ; preds = %167, %86
  br label %169

169:                                              ; preds = %168, %79
  br label %170

170:                                              ; preds = %169, %72
  br label %171

171:                                              ; preds = %170, %65
  br label %172

172:                                              ; preds = %171, %53
  br label %173

173:                                              ; preds = %172, %41
  br label %174

174:                                              ; preds = %173, %34
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local i8* @ep_find_event_name_end(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @catch_exception_command_1(i32, i8*, i32, i32) #1

declare dso_local i32 @catch_fork_command_1(i32, i8*, i32, i32) #1

declare dso_local i32 @catch_exec_command_1(i8*, i32, i32) #1

declare dso_local i32 @catch_load_command_1(i8*, i32, i32) #1

declare dso_local i32 @catch_unload_command_1(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
