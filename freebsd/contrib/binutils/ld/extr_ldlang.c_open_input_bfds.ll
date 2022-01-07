; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_open_input_bfds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_open_input_bfds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_33__, %struct.TYPE_21__, %struct.TYPE_32__, %struct.TYPE_31__, %struct.TYPE_28__, %struct.TYPE_26__ }
%struct.TYPE_33__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_21__ = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_19__* }
%struct.TYPE_28__ = type { %struct.TYPE_27__, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_19__* }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_19__* }
%struct.TYPE_22__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { %struct.bfd_link_hash_entry* }
%struct.bfd_link_hash_entry = type { i32 }
%struct.TYPE_24__ = type { i8* }
%struct.TYPE_20__ = type { %struct.TYPE_19__*, %struct.TYPE_19__** }

@constructor_list = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@link_info = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@current_target = common dso_local global i32 0, align 4
@bfd_archive = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@config = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, i32)* @open_input_bfds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @open_input_bfds(%struct.TYPE_19__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfd_link_hash_entry*, align 8
  %6 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %7

7:                                                ; preds = %140, %2
  %8 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %9 = icmp ne %struct.TYPE_19__* %8, null
  br i1 %9, label %10, label %145

10:                                               ; preds = %7
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %138 [
    i32 133, label %15
    i32 130, label %18
    i32 128, label %25
    i32 132, label %51
    i32 129, label %69
    i32 131, label %74
  ]

15:                                               ; preds = %10
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @constructor_list, i32 0, i32 0), align 8
  %17 = load i32, i32* %4, align 4
  call void @open_input_bfds(%struct.TYPE_19__* %16, i32 %17)
  br label %139

18:                                               ; preds = %10
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %24 = load i32, i32* %4, align 4
  call void @open_input_bfds(%struct.TYPE_19__* %23, i32 %24)
  br label %139

25:                                               ; preds = %10
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @wildcardp(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %31
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @lookup_name(i32 %42)
  br label %44

44:                                               ; preds = %38, %31, %25
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %48, align 8
  %50 = load i32, i32* %4, align 4
  call void @open_input_bfds(%struct.TYPE_19__* %49, i32 %50)
  br label %139

51:                                               ; preds = %10
  br label %52

52:                                               ; preds = %62, %51
  %53 = load %struct.TYPE_29__*, %struct.TYPE_29__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @link_info, i32 0, i32 0), align 8
  %54 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %53, i32 0, i32 0
  %55 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %54, align 8
  store %struct.bfd_link_hash_entry* %55, %struct.bfd_link_hash_entry** %5, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  %61 = load i32, i32* @TRUE, align 4
  call void @open_input_bfds(%struct.TYPE_19__* %60, i32 %61)
  br label %62

62:                                               ; preds = %52
  %63 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %5, align 8
  %64 = load %struct.TYPE_29__*, %struct.TYPE_29__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @link_info, i32 0, i32 0), align 8
  %65 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %64, i32 0, i32 0
  %66 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %65, align 8
  %67 = icmp ne %struct.bfd_link_hash_entry* %63, %66
  br i1 %67, label %52, label %68

68:                                               ; preds = %62
  br label %139

69:                                               ; preds = %10
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* @current_target, align 4
  br label %139

74:                                               ; preds = %10
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %137

80:                                               ; preds = %74
  %81 = load i32, i32* @current_target, align 4
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 3
  store i32 %81, i32* %84, align 8
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %112

87:                                               ; preds = %80
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %112, label %93

93:                                               ; preds = %87
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %112

99:                                               ; preds = %93
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @bfd_archive, align 4
  %105 = call i32 @bfd_check_format(i32 %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %99
  %108 = load i8*, i8** @FALSE, align 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  store i8* %108, i8** %111, align 8
  br label %112

112:                                              ; preds = %107, %99, %93, %87, %80
  %113 = call i32 @lang_list_init(%struct.TYPE_20__* %6)
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 1
  %116 = call i32 @load_symbols(%struct.TYPE_21__* %115, %struct.TYPE_20__* %6)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %112
  %119 = load i8*, i8** @FALSE, align 8
  store i8* %119, i8** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @config, i32 0, i32 0), align 8
  br label %120

120:                                              ; preds = %118, %112
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %121, align 8
  %123 = icmp ne %struct.TYPE_19__* %122, null
  br i1 %123, label %124, label %136

124:                                              ; preds = %120
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %130 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %129, align 8
  store %struct.TYPE_19__* %128, %struct.TYPE_19__** %130, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %131, align 8
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %134, i32 0, i32 1
  store %struct.TYPE_19__* %132, %struct.TYPE_19__** %135, align 8
  br label %136

136:                                              ; preds = %124, %120
  br label %137

137:                                              ; preds = %136, %74
  br label %139

138:                                              ; preds = %10
  br label %139

139:                                              ; preds = %138, %137, %69, %68, %44, %18, %15
  br label %140

140:                                              ; preds = %139
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %143, align 8
  store %struct.TYPE_19__* %144, %struct.TYPE_19__** %3, align 8
  br label %7

145:                                              ; preds = %7
  ret void
}

declare dso_local i32 @wildcardp(i32) #1

declare dso_local i32 @lookup_name(i32) #1

declare dso_local i32 @bfd_check_format(i32, i32) #1

declare dso_local i32 @lang_list_init(%struct.TYPE_20__*) #1

declare dso_local i32 @load_symbols(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
