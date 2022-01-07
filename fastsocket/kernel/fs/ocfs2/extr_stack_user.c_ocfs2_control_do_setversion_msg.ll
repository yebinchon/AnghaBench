; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_stack_user.c_ocfs2_control_do_setversion_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_stack_user.c_ocfs2_control_do_setversion_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ocfs2_protocol_version }
%struct.ocfs2_protocol_version = type { i64, i64 }
%struct.file = type { %struct.ocfs2_control_private* }
%struct.ocfs2_control_private = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.ocfs2_control_message_setv = type { i8, i8, i8, i32, i32, i32 }

@ocfs2_user_plugin = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@OCFS2_CONTROL_HANDSHAKE_PROTOCOL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@OCFS2_CONTROL_MESSAGE_SETVERSION_OP = common dso_local global i32 0, align 4
@OCFS2_CONTROL_MESSAGE_OP_LEN = common dso_local global i32 0, align 4
@LONG_MIN = common dso_local global i64 0, align 8
@LONG_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.ocfs2_control_message_setv*)* @ocfs2_control_do_setversion_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_control_do_setversion_msg(%struct.file* %0, %struct.ocfs2_control_message_setv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.ocfs2_control_message_setv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ocfs2_control_private*, align 8
  %10 = alloca %struct.ocfs2_protocol_version*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.ocfs2_control_message_setv* %1, %struct.ocfs2_control_message_setv** %5, align 8
  store i8* null, i8** %8, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.ocfs2_control_private*, %struct.ocfs2_control_private** %12, align 8
  store %struct.ocfs2_control_private* %13, %struct.ocfs2_control_private** %9, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ocfs2_user_plugin, i32 0, i32 0), align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.ocfs2_protocol_version* %15, %struct.ocfs2_protocol_version** %10, align 8
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = call i64 @ocfs2_control_get_handshake_state(%struct.file* %16)
  %18 = load i64, i64* @OCFS2_CONTROL_HANDSHAKE_PROTOCOL, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %151

23:                                               ; preds = %2
  %24 = load %struct.ocfs2_control_message_setv*, %struct.ocfs2_control_message_setv** %5, align 8
  %25 = getelementptr inbounds %struct.ocfs2_control_message_setv, %struct.ocfs2_control_message_setv* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @OCFS2_CONTROL_MESSAGE_SETVERSION_OP, align 4
  %28 = load i32, i32* @OCFS2_CONTROL_MESSAGE_OP_LEN, align 4
  %29 = call i64 @strncmp(i32 %26, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %151

34:                                               ; preds = %23
  %35 = load %struct.ocfs2_control_message_setv*, %struct.ocfs2_control_message_setv** %5, align 8
  %36 = getelementptr inbounds %struct.ocfs2_control_message_setv, %struct.ocfs2_control_message_setv* %35, i32 0, i32 0
  %37 = load i8, i8* %36, align 4
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 32
  br i1 %39, label %52, label %40

40:                                               ; preds = %34
  %41 = load %struct.ocfs2_control_message_setv*, %struct.ocfs2_control_message_setv** %5, align 8
  %42 = getelementptr inbounds %struct.ocfs2_control_message_setv, %struct.ocfs2_control_message_setv* %41, i32 0, i32 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 32
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.ocfs2_control_message_setv*, %struct.ocfs2_control_message_setv** %5, align 8
  %48 = getelementptr inbounds %struct.ocfs2_control_message_setv, %struct.ocfs2_control_message_setv* %47, i32 0, i32 2
  %49 = load i8, i8* %48, align 2
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 10
  br i1 %51, label %52, label %55

52:                                               ; preds = %46, %40, %34
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %151

55:                                               ; preds = %46
  %56 = load %struct.ocfs2_control_message_setv*, %struct.ocfs2_control_message_setv** %5, align 8
  %57 = getelementptr inbounds %struct.ocfs2_control_message_setv, %struct.ocfs2_control_message_setv* %56, i32 0, i32 2
  store i8 0, i8* %57, align 2
  %58 = load %struct.ocfs2_control_message_setv*, %struct.ocfs2_control_message_setv** %5, align 8
  %59 = getelementptr inbounds %struct.ocfs2_control_message_setv, %struct.ocfs2_control_message_setv* %58, i32 0, i32 1
  store i8 0, i8* %59, align 1
  %60 = load %struct.ocfs2_control_message_setv*, %struct.ocfs2_control_message_setv** %5, align 8
  %61 = getelementptr inbounds %struct.ocfs2_control_message_setv, %struct.ocfs2_control_message_setv* %60, i32 0, i32 0
  store i8 0, i8* %61, align 4
  %62 = load %struct.ocfs2_control_message_setv*, %struct.ocfs2_control_message_setv** %5, align 8
  %63 = getelementptr inbounds %struct.ocfs2_control_message_setv, %struct.ocfs2_control_message_setv* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @simple_strtol(i32 %64, i8** %8, i32 16)
  store i64 %65, i64* %6, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %55
  %69 = load i8*, i8** %8, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68, %55
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %151

76:                                               ; preds = %68
  %77 = load %struct.ocfs2_control_message_setv*, %struct.ocfs2_control_message_setv** %5, align 8
  %78 = getelementptr inbounds %struct.ocfs2_control_message_setv, %struct.ocfs2_control_message_setv* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @simple_strtol(i32 %79, i8** %8, i32 16)
  store i64 %80, i64* %7, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load i8*, i8** %8, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83, %76
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %151

91:                                               ; preds = %83
  %92 = load i64, i64* %6, align 8
  %93 = load i64, i64* @LONG_MIN, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %105, label %95

95:                                               ; preds = %91
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* @LONG_MAX, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %105, label %99

99:                                               ; preds = %95
  %100 = load i64, i64* %6, align 8
  %101 = icmp sgt i64 %100, -1
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i64, i64* %6, align 8
  %104 = icmp slt i64 %103, 1
  br i1 %104, label %105, label %108

105:                                              ; preds = %102, %99, %95, %91
  %106 = load i32, i32* @ERANGE, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %151

108:                                              ; preds = %102
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* @LONG_MIN, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %122, label %112

112:                                              ; preds = %108
  %113 = load i64, i64* %7, align 8
  %114 = load i64, i64* @LONG_MAX, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %122, label %116

116:                                              ; preds = %112
  %117 = load i64, i64* %7, align 8
  %118 = icmp sgt i64 %117, -1
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load i64, i64* %7, align 8
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119, %116, %112, %108
  %123 = load i32, i32* @ERANGE, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  br label %151

125:                                              ; preds = %119
  %126 = load i64, i64* %6, align 8
  %127 = load %struct.ocfs2_protocol_version*, %struct.ocfs2_protocol_version** %10, align 8
  %128 = getelementptr inbounds %struct.ocfs2_protocol_version, %struct.ocfs2_protocol_version* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %126, %129
  br i1 %130, label %137, label %131

131:                                              ; preds = %125
  %132 = load i64, i64* %7, align 8
  %133 = load %struct.ocfs2_protocol_version*, %struct.ocfs2_protocol_version** %10, align 8
  %134 = getelementptr inbounds %struct.ocfs2_protocol_version, %struct.ocfs2_protocol_version* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp sgt i64 %132, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %131, %125
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %3, align 4
  br label %151

140:                                              ; preds = %131
  %141 = load i64, i64* %6, align 8
  %142 = load %struct.ocfs2_control_private*, %struct.ocfs2_control_private** %9, align 8
  %143 = getelementptr inbounds %struct.ocfs2_control_private, %struct.ocfs2_control_private* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  store i64 %141, i64* %144, align 8
  %145 = load i64, i64* %7, align 8
  %146 = load %struct.ocfs2_control_private*, %struct.ocfs2_control_private** %9, align 8
  %147 = getelementptr inbounds %struct.ocfs2_control_private, %struct.ocfs2_control_private* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  store i64 %145, i64* %148, align 8
  %149 = load %struct.file*, %struct.file** %4, align 8
  %150 = call i32 @ocfs2_control_install_private(%struct.file* %149)
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %140, %137, %122, %105, %88, %73, %52, %31, %20
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i64 @ocfs2_control_get_handshake_state(%struct.file*) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i64 @simple_strtol(i32, i8**, i32) #1

declare dso_local i32 @ocfs2_control_install_private(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
