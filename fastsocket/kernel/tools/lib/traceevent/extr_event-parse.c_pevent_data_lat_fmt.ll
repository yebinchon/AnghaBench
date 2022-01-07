; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_pevent_data_lat_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_pevent_data_lat_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pevent = type { i32 }
%struct.trace_seq = type { i32 }
%struct.pevent_record = type { i8* }

@pevent_data_lat_fmt.check_lock_depth = internal global i32 1, align 4
@pevent_data_lat_fmt.check_migrate_disable = internal global i32 1, align 4
@pevent_data_lat_fmt.lock_depth_exists = internal global i32 0, align 4
@pevent_data_lat_fmt.migrate_disable_exists = internal global i32 0, align 4
@TRACE_FLAG_HARDIRQ = common dso_local global i32 0, align 4
@TRACE_FLAG_SOFTIRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%c%c%c\00", align 1
@TRACE_FLAG_IRQS_OFF = common dso_local global i32 0, align 4
@TRACE_FLAG_IRQS_NOSUPPORT = common dso_local global i32 0, align 4
@TRACE_FLAG_NEED_RESCHED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pevent_data_lat_fmt(%struct.pevent* %0, %struct.trace_seq* %1, %struct.pevent_record* %2) #0 {
  %4 = alloca %struct.pevent*, align 8
  %5 = alloca %struct.trace_seq*, align 8
  %6 = alloca %struct.pevent_record*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.pevent* %0, %struct.pevent** %4, align 8
  store %struct.trace_seq* %1, %struct.trace_seq** %5, align 8
  store %struct.pevent_record* %2, %struct.pevent_record** %6, align 8
  %14 = load %struct.pevent_record*, %struct.pevent_record** %6, align 8
  %15 = getelementptr inbounds %struct.pevent_record, %struct.pevent_record* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %13, align 8
  %17 = load %struct.pevent*, %struct.pevent** %4, align 8
  %18 = load i8*, i8** %13, align 8
  %19 = call i32 @parse_common_flags(%struct.pevent* %17, i8* %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.pevent*, %struct.pevent** %4, align 8
  %21 = load i8*, i8** %13, align 8
  %22 = call i32 @parse_common_pc(%struct.pevent* %20, i8* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @pevent_data_lat_fmt.lock_depth_exists, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load %struct.pevent*, %struct.pevent** %4, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = call i32 @parse_common_lock_depth(%struct.pevent* %26, i8* %27)
  store i32 %28, i32* %9, align 4
  br label %42

29:                                               ; preds = %3
  %30 = load i32, i32* @pevent_data_lat_fmt.check_lock_depth, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load %struct.pevent*, %struct.pevent** %4, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = call i32 @parse_common_lock_depth(%struct.pevent* %33, i8* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* @pevent_data_lat_fmt.check_lock_depth, align 4
  br label %40

39:                                               ; preds = %32
  store i32 1, i32* @pevent_data_lat_fmt.lock_depth_exists, align 4
  br label %40

40:                                               ; preds = %39, %38
  br label %41

41:                                               ; preds = %40, %29
  br label %42

42:                                               ; preds = %41, %25
  %43 = load i32, i32* @pevent_data_lat_fmt.migrate_disable_exists, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.pevent*, %struct.pevent** %4, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = call i32 @parse_common_migrate_disable(%struct.pevent* %46, i8* %47)
  store i32 %48, i32* %10, align 4
  br label %62

49:                                               ; preds = %42
  %50 = load i32, i32* @pevent_data_lat_fmt.check_migrate_disable, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load %struct.pevent*, %struct.pevent** %4, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = call i32 @parse_common_migrate_disable(%struct.pevent* %53, i8* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 0, i32* @pevent_data_lat_fmt.check_migrate_disable, align 4
  br label %60

59:                                               ; preds = %52
  store i32 1, i32* @pevent_data_lat_fmt.migrate_disable_exists, align 4
  br label %60

60:                                               ; preds = %59, %58
  br label %61

61:                                               ; preds = %60, %49
  br label %62

62:                                               ; preds = %61, %45
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @TRACE_FLAG_HARDIRQ, align 4
  %65 = and i32 %63, %64
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @TRACE_FLAG_SOFTIRQ, align 4
  %68 = and i32 %66, %67
  store i32 %68, i32* %12, align 4
  %69 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @TRACE_FLAG_IRQS_OFF, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %82

75:                                               ; preds = %62
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @TRACE_FLAG_IRQS_NOSUPPORT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 88, i32 46
  br label %82

82:                                               ; preds = %75, %74
  %83 = phi i32 [ 100, %74 ], [ %81, %75 ]
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @TRACE_FLAG_NEED_RESCHED, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 78, i32 46
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %82
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %107

96:                                               ; preds = %92, %82
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %105

100:                                              ; preds = %96
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 115, i32 46
  br label %105

105:                                              ; preds = %100, %99
  %106 = phi i32 [ 104, %99 ], [ %104, %100 ]
  br label %107

107:                                              ; preds = %105, %95
  %108 = phi i32 [ 72, %95 ], [ %106, %105 ]
  %109 = call i32 (%struct.trace_seq*, i8*, i32, ...) @trace_seq_printf(%struct.trace_seq* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %89, i32 %108)
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 (%struct.trace_seq*, i8*, i32, ...) @trace_seq_printf(%struct.trace_seq* %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  br label %119

116:                                              ; preds = %107
  %117 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %118 = call i32 @trace_seq_putc(%struct.trace_seq* %117, i8 signext 46)
  br label %119

119:                                              ; preds = %116, %112
  %120 = load i32, i32* @pevent_data_lat_fmt.migrate_disable_exists, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %133

122:                                              ; preds = %119
  %123 = load i32, i32* %10, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %127 = call i32 @trace_seq_putc(%struct.trace_seq* %126, i8 signext 46)
  br label %132

128:                                              ; preds = %122
  %129 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %130 = load i32, i32* %10, align 4
  %131 = call i32 (%struct.trace_seq*, i8*, i32, ...) @trace_seq_printf(%struct.trace_seq* %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %128, %125
  br label %133

133:                                              ; preds = %132, %119
  %134 = load i32, i32* @pevent_data_lat_fmt.lock_depth_exists, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %133
  %137 = load i32, i32* %9, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %141 = call i32 @trace_seq_putc(%struct.trace_seq* %140, i8 signext 46)
  br label %146

142:                                              ; preds = %136
  %143 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %144 = load i32, i32* %9, align 4
  %145 = call i32 (%struct.trace_seq*, i8*, i32, ...) @trace_seq_printf(%struct.trace_seq* %143, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %142, %139
  br label %147

147:                                              ; preds = %146, %133
  %148 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %149 = call i32 @trace_seq_terminate(%struct.trace_seq* %148)
  ret void
}

declare dso_local i32 @parse_common_flags(%struct.pevent*, i8*) #1

declare dso_local i32 @parse_common_pc(%struct.pevent*, i8*) #1

declare dso_local i32 @parse_common_lock_depth(%struct.pevent*, i8*) #1

declare dso_local i32 @parse_common_migrate_disable(%struct.pevent*, i8*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i32, ...) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i8 signext) #1

declare dso_local i32 @trace_seq_terminate(%struct.trace_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
