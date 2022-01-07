; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/fsinfo/extr_fsi_util.c_set_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/fsinfo/extr_fsi_util.c_set_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"host field \22%s\22 already set\00", align 1
@host_strings = common dso_local global i8** null, align 8
@dict_of_hosts = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"duplicate host %s!\00", align 1
@hostname = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_host(%struct.TYPE_6__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = shl i32 1, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load i8**, i8*** @host_strings, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @fsi_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %141

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* %5, align 4
  switch i32 %35, label %139 [
    i32 129, label %36
    i32 131, label %71
    i32 130, label %99
    i32 133, label %127
    i32 128, label %131
    i32 132, label %135
  ]

36:                                               ; preds = %29
  %37 = load i8*, i8** %6, align 8
  %38 = call i8* @xstrdup(i8* %37)
  store i8* %38, i8** %8, align 8
  %39 = load i32, i32* @dict_of_hosts, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = call i32* @dict_locate(i32 %39, i8* %40)
  store i32* %41, i32** %9, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @fsi_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  br label %53

47:                                               ; preds = %36
  %48 = load i32, i32* @dict_of_hosts, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = bitcast %struct.TYPE_6__* %50 to i8*
  %52 = call i32 @dict_add(i32 %48, i8* %49, i8* %51)
  br label %53

53:                                               ; preds = %47, %44
  %54 = load i8*, i8** %6, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* @hostname, align 4
  %59 = call i32 @domain_strip(i8* %57, i32 %58)
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @strchr(i8* %60, i8 signext 46)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @XFREE(i8* %64)
  br label %70

66:                                               ; preds = %53
  %67 = load i8*, i8** %8, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %66, %63
  br label %141

71:                                               ; preds = %29
  %72 = load i8*, i8** %6, align 8
  %73 = bitcast i8* %72 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %73, %struct.TYPE_5__** %11, align 8
  %74 = load i32, i32* %7, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 7
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = icmp ne %struct.TYPE_5__* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %71
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 7
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  store %struct.TYPE_5__* %87, %struct.TYPE_5__** %10, align 8
  br label %93

88:                                               ; preds = %71
  %89 = call i8* (...) @new_que()
  %90 = bitcast i8* %89 to %struct.TYPE_5__*
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 7
  store %struct.TYPE_5__* %90, %struct.TYPE_5__** %92, align 8
  store %struct.TYPE_5__* %90, %struct.TYPE_5__** %10, align 8
  br label %93

93:                                               ; preds = %88, %84
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ins_que(%struct.TYPE_5__* %94, i32 %97)
  br label %141

99:                                               ; preds = %29
  %100 = load i8*, i8** %6, align 8
  %101 = bitcast i8* %100 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %101, %struct.TYPE_5__** %13, align 8
  %102 = load i32, i32* %7, align 4
  %103 = xor i32 %102, -1
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, %103
  store i32 %107, i32* %105, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 6
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = icmp ne %struct.TYPE_5__* %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %99
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 6
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  store %struct.TYPE_5__* %115, %struct.TYPE_5__** %12, align 8
  br label %121

116:                                              ; preds = %99
  %117 = call i8* (...) @new_que()
  %118 = bitcast i8* %117 to %struct.TYPE_5__*
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 6
  store %struct.TYPE_5__* %118, %struct.TYPE_5__** %120, align 8
  store %struct.TYPE_5__* %118, %struct.TYPE_5__** %12, align 8
  br label %121

121:                                              ; preds = %116, %112
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @ins_que(%struct.TYPE_5__* %122, i32 %125)
  br label %141

127:                                              ; preds = %29
  %128 = load i8*, i8** %6, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 3
  store i8* %128, i8** %130, align 8
  br label %141

131:                                              ; preds = %29
  %132 = load i8*, i8** %6, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 4
  store i8* %132, i8** %134, align 8
  br label %141

135:                                              ; preds = %29
  %136 = load i8*, i8** %6, align 8
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 5
  store i8* %136, i8** %138, align 8
  br label %141

139:                                              ; preds = %29
  %140 = call i32 (...) @abort() #3
  unreachable

141:                                              ; preds = %22, %135, %131, %127, %121, %93, %70
  ret void
}

declare dso_local i32 @fsi_error(i8*, i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32* @dict_locate(i32, i8*) #1

declare dso_local i32 @dict_add(i32, i8*, i8*) #1

declare dso_local i32 @domain_strip(i8*, i32) #1

declare dso_local i32 @strchr(i8*, i8 signext) #1

declare dso_local i32 @XFREE(i8*) #1

declare dso_local i8* @new_que(...) #1

declare dso_local i32 @ins_que(%struct.TYPE_5__*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
