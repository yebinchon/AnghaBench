; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_proc.c_netstat_seq_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_proc.c_netstat_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32, i32* }
%struct.seq_file = type { %struct.net* }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"TcpExt:\00", align 1
@snmp4_net_list = common dso_local global %struct.TYPE_5__* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"\0ATcpExt:\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" %lu\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"\0AIpExt:\00", align 1
@snmp4_ipextstats_list = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @netstat_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netstat_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.net*, %struct.net** %8, align 8
  store %struct.net* %9, %struct.net** %6, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = call i32 @seq_puts(%struct.seq_file* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %29, %2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @snmp4_net_list, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %12
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @snmp4_net_list, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %27)
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %12

32:                                               ; preds = %12
  %33 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %34 = call i32 @seq_puts(%struct.seq_file* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %58, %32
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @snmp4_net_list, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %61

43:                                               ; preds = %35
  %44 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %45 = load %struct.net*, %struct.net** %6, align 8
  %46 = getelementptr inbounds %struct.net, %struct.net* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8**
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @snmp4_net_list, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32* @snmp_fold_field(i8** %49, i32 %55)
  %57 = call i32 @seq_printf(%struct.seq_file* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %56)
  br label %58

58:                                               ; preds = %43
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %35

61:                                               ; preds = %35
  %62 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %63 = call i32 @seq_puts(%struct.seq_file* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %81, %61
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** @snmp4_ipextstats_list, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %84

72:                                               ; preds = %64
  %73 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** @snmp4_ipextstats_list, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @seq_printf(%struct.seq_file* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %79)
  br label %81

81:                                               ; preds = %72
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %64

84:                                               ; preds = %64
  %85 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %86 = call i32 @seq_puts(%struct.seq_file* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %110, %84
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** @snmp4_ipextstats_list, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %113

95:                                               ; preds = %87
  %96 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %97 = load %struct.net*, %struct.net** %6, align 8
  %98 = getelementptr inbounds %struct.net, %struct.net* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i8**
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** @snmp4_ipextstats_list, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32* @snmp_fold_field(i8** %101, i32 %107)
  %109 = call i32 @seq_printf(%struct.seq_file* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %108)
  br label %110

110:                                              ; preds = %95
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %5, align 4
  br label %87

113:                                              ; preds = %87
  %114 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %115 = call i32 @seq_putc(%struct.seq_file* %114, i8 signext 10)
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32*) #1

declare dso_local i32* @snmp_fold_field(i8**, i32) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
