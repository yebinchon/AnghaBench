; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_provider.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32, i32* }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_11__*, %struct.TYPE_9__*, i32, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__*, i32 }

@yypcb = common dso_local global %struct.TYPE_10__* null, align 8
@DT_NODE_PROVIDER = common dso_local global i32 0, align 4
@D_PROV_BADNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"provider name may not contain scoping operator: %s\0A\00", align 1
@DTRACE_PROVNAMELEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"provider name may not exceed %d characters: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"provider name may not end with a digit: %s\0A\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@EDT_NOMEM = common dso_local global i32 0, align 4
@DT_PROVIDER_INTF = common dso_local global i32 0, align 4
@YYS_CLAUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @dt_node_provider(i8* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** @yypcb, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  %12 = load i32, i32* @DT_NODE_PROVIDER, align 4
  %13 = call %struct.TYPE_9__* @dt_node_alloc(i32 %12)
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %6, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 4
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %19, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i32* @strchr(i8* %20, i8 signext 96)
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = load i32, i32* @D_PROV_BADNAME, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @dnerror(%struct.TYPE_9__* %24, i32 %25, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %23, %2
  %29 = load i8*, i8** %3, align 8
  %30 = call i64 @strlen(i8* %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* @DTRACE_PROVNAMELEN, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = load i32, i32* @D_PROV_BADNAME, align 4
  %36 = load i64, i64* @DTRACE_PROVNAMELEN, align 8
  %37 = sub i64 %36, 1
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @dnerror(%struct.TYPE_9__* %34, i32 %35, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %37, i8* %38)
  br label %40

40:                                               ; preds = %33, %28
  %41 = load i8*, i8** %3, align 8
  %42 = load i64, i64* %8, align 8
  %43 = sub i64 %42, 1
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = call i64 @isdigit(i8 signext %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %50 = load i32, i32* @D_PROV_BADNAME, align 4
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @dnerror(%struct.TYPE_9__* %49, i32 %50, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %48, %40
  %54 = load i32*, i32** %5, align 8
  %55 = load i8*, i8** %3, align 8
  %56 = call %struct.TYPE_11__* @dt_provider_lookup(i32* %54, i8* %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  store %struct.TYPE_11__* %56, %struct.TYPE_11__** %58, align 8
  %59 = icmp ne %struct.TYPE_11__* %56, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32, i32* @B_TRUE, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  br label %86

64:                                               ; preds = %53
  %65 = load i32*, i32** %5, align 8
  %66 = load i8*, i8** %3, align 8
  %67 = call %struct.TYPE_11__* @dt_provider_create(i32* %65, i8* %66)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  store %struct.TYPE_11__* %67, %struct.TYPE_11__** %69, align 8
  %70 = icmp eq %struct.TYPE_11__* %67, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** @yypcb, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @EDT_NOMEM, align 4
  %76 = call i32 @longjmp(i32 %74, i32 %75)
  br label %85

77:                                               ; preds = %64
  %78 = load i32, i32* @DT_PROVIDER_INTF, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %78
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %77, %71
  br label %86

86:                                               ; preds = %85, %60
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** @yypcb, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  store %struct.TYPE_9__* %89, %struct.TYPE_9__** %7, align 8
  br label %90

90:                                               ; preds = %96, %86
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = icmp ne %struct.TYPE_9__* %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  br label %96

96:                                               ; preds = %95
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  store %struct.TYPE_9__* %99, %struct.TYPE_9__** %7, align 8
  br label %90

100:                                              ; preds = %90
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  store %struct.TYPE_9__* %105, %struct.TYPE_9__** %107, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** @yypcb, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  store %struct.TYPE_9__* %110, %struct.TYPE_9__** %114, align 8
  %115 = load i32, i32* @YYS_CLAUSE, align 4
  %116 = call i32 @yybegin(i32 %115)
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  ret %struct.TYPE_9__* %117
}

declare dso_local %struct.TYPE_9__* @dt_node_alloc(i32) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @dnerror(%struct.TYPE_9__*, i32, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local %struct.TYPE_11__* @dt_provider_lookup(i32*, i8*) #1

declare dso_local %struct.TYPE_11__* @dt_provider_create(i32*, i8*) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @yybegin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
