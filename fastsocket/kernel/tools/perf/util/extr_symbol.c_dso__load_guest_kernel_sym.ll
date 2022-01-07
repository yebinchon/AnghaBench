; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_dso__load_guest_kernel_sym.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_dso__load_guest_kernel_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32* }
%struct.dso = type { i32 }
%struct.map = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.machine* }
%struct.machine = type { i8* }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Guest kernel map hasn't the point to groups\0A\00", align 1
@symbol_conf = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"%s/proc/kallsyms\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Using %s for symbols\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dso*, %struct.map*, i32)* @dso__load_guest_kernel_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dso__load_guest_kernel_sym(%struct.dso* %0, %struct.map* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dso*, align 8
  %6 = alloca %struct.map*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.machine*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.dso* %0, %struct.dso** %5, align 8
  store %struct.map* %1, %struct.map** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %9, align 8
  %14 = load i32, i32* @PATH_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load %struct.map*, %struct.map** %6, align 8
  %19 = getelementptr inbounds %struct.map, %struct.map* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %85

24:                                               ; preds = %3
  %25 = load %struct.map*, %struct.map** %6, align 8
  %26 = getelementptr inbounds %struct.map, %struct.map* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.machine*, %struct.machine** %28, align 8
  store %struct.machine* %29, %struct.machine** %10, align 8
  %30 = load %struct.machine*, %struct.machine** %10, align 8
  %31 = call i64 @machine__is_default_guest(%struct.machine* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %24
  %34 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @symbol_conf, i32 0, i32 1), align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.dso*, %struct.dso** %5, align 8
  %38 = load %struct.map*, %struct.map** %6, align 8
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @symbol_conf, i32 0, i32 1), align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @dso__load_vmlinux(%struct.dso* %37, %struct.map* %38, i32* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  br label %65

42:                                               ; preds = %33
  %43 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @symbol_conf, i32 0, i32 0), align 8
  store i8* %43, i8** %9, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %85

47:                                               ; preds = %42
  br label %53

48:                                               ; preds = %24
  %49 = load %struct.machine*, %struct.machine** %10, align 8
  %50 = getelementptr inbounds %struct.machine, %struct.machine* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  store i8* %17, i8** %9, align 8
  br label %53

53:                                               ; preds = %48, %47
  %54 = load %struct.dso*, %struct.dso** %5, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load %struct.map*, %struct.map** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @dso__load_kallsyms(%struct.dso* %54, i8* %55, %struct.map* %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %61, %53
  br label %65

65:                                               ; preds = %64, %36
  %66 = load i32, i32* %8, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %65
  %69 = load i8*, i8** %9, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load %struct.machine*, %struct.machine** %10, align 8
  %73 = trunc i64 %15 to i32
  %74 = call i32 @machine__mmap_name(%struct.machine* %72, i8* %17, i32 %73)
  %75 = load %struct.dso*, %struct.dso** %5, align 8
  %76 = call i32 @strdup(i8* %17)
  %77 = call i32 @dso__set_long_name(%struct.dso* %75, i32 %76)
  br label %78

78:                                               ; preds = %71, %68
  %79 = load %struct.map*, %struct.map** %6, align 8
  %80 = call i32 @map__fixup_start(%struct.map* %79)
  %81 = load %struct.map*, %struct.map** %6, align 8
  %82 = call i32 @map__fixup_end(%struct.map* %81)
  br label %83

83:                                               ; preds = %78, %65
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %85

85:                                               ; preds = %83, %46, %22
  %86 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pr_debug(i8*, ...) #2

declare dso_local i64 @machine__is_default_guest(%struct.machine*) #2

declare dso_local i32 @dso__load_vmlinux(%struct.dso*, %struct.map*, i32*, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32 @dso__load_kallsyms(%struct.dso*, i8*, %struct.map*, i32) #2

declare dso_local i32 @machine__mmap_name(%struct.machine*, i8*, i32) #2

declare dso_local i32 @dso__set_long_name(%struct.dso*, i32) #2

declare dso_local i32 @strdup(i8*) #2

declare dso_local i32 @map__fixup_start(%struct.map*) #2

declare dso_local i32 @map__fixup_end(%struct.map*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
