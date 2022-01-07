; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_module.c_dtrace_lookup_by_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_module.c_dtrace_lookup_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32, i32*, %struct.TYPE_22__, %struct.TYPE_21__* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i32* (%struct.TYPE_25__*, i8*, %struct.TYPE_27__*, i32*)* }
%struct.TYPE_27__ = type { i64, i32, i64, i32, i64, i32 }
%struct.TYPE_23__ = type { i8*, i32, i32 }
%struct.TYPE_26__ = type { i8*, i32, i32, i32 }

@DTRACE_OBJ_EVERY = common dso_local global i8* null, align 8
@DTRACE_OBJ_KMODS = common dso_local global i8* null, align 8
@DTRACE_OBJ_UMODS = common dso_local global i8* null, align 8
@DT_DM_KERNEL = common dso_local global i32 0, align 4
@STB_GLOBAL = common dso_local global i32 0, align 4
@STT_NOTYPE = common dso_local global i32 0, align 4
@SHN_UNDEF = common dso_local global i32 0, align 4
@EDT_NOSYM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_lookup_by_name(%struct.TYPE_24__* %0, i8* %1, i8* %2, %struct.TYPE_27__* %3, %struct.TYPE_23__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_27__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_27__* %3, %struct.TYPE_27__** %10, align 8
  store %struct.TYPE_23__* %4, %struct.TYPE_23__** %11, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** @DTRACE_OBJ_EVERY, align 8
  %21 = icmp ne i8* %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %5
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** @DTRACE_OBJ_KMODS, align 8
  %25 = icmp ne i8* %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** @DTRACE_OBJ_UMODS, align 8
  %29 = icmp ne i8* %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call %struct.TYPE_25__* @dt_module_from_object(%struct.TYPE_24__* %31, i8* %32)
  store %struct.TYPE_25__* %33, %struct.TYPE_25__** %12, align 8
  %34 = icmp eq %struct.TYPE_25__* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 -1, i32* %6, align 4
  br label %194

36:                                               ; preds = %30
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %39 = call i32 @dt_module_load(%struct.TYPE_24__* %37, %struct.TYPE_25__* %38)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 -1, i32* %6, align 4
  br label %194

42:                                               ; preds = %36
  store i32 1, i32* %14, align 4
  br label %63

43:                                               ; preds = %26, %22, %5
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** @DTRACE_OBJ_KMODS, align 8
  %46 = icmp eq i8* %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @DT_DM_KERNEL, align 4
  store i32 %48, i32* %18, align 4
  store i32 %48, i32* %17, align 4
  br label %56

49:                                               ; preds = %43
  %50 = load i8*, i8** %8, align 8
  %51 = load i8*, i8** @DTRACE_OBJ_UMODS, align 8
  %52 = icmp eq i8* %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @DT_DM_KERNEL, align 4
  store i32 %54, i32* %17, align 4
  br label %55

55:                                               ; preds = %53, %49
  br label %56

56:                                               ; preds = %55, %47
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 1
  %59 = call %struct.TYPE_25__* @dt_list_next(%struct.TYPE_25__* %58)
  store %struct.TYPE_25__* %59, %struct.TYPE_25__** %12, align 8
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %56, %42
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %65 = icmp eq %struct.TYPE_27__* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store %struct.TYPE_27__* %16, %struct.TYPE_27__** %10, align 8
  br label %67

67:                                               ; preds = %66, %63
  br label %68

68:                                               ; preds = %185, %67
  %69 = load i32, i32* %14, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %190

71:                                               ; preds = %68
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %17, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* %18, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %185

80:                                               ; preds = %71
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %83 = call i32 @dt_module_load(%struct.TYPE_24__* %81, %struct.TYPE_25__* %82)
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %185

86:                                               ; preds = %80
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 4
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 0
  %91 = load i32* (%struct.TYPE_25__*, i8*, %struct.TYPE_27__*, i32*)*, i32* (%struct.TYPE_25__*, i8*, %struct.TYPE_27__*, i32*)** %90, align 8
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %95 = call i32* %91(%struct.TYPE_25__* %92, i8* %93, %struct.TYPE_27__* %94, i32* %15)
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %121

97:                                               ; preds = %86
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %99 = icmp ne %struct.TYPE_23__* %98, null
  br i1 %99, label %100, label %120

100:                                              ; preds = %97
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to i8*
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 0
  store i8* %114, i8** %116, align 8
  %117 = load i32, i32* %15, align 4
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %100, %97
  store i32 0, i32* %6, align 4
  br label %194

121:                                              ; preds = %86
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %184

126:                                              ; preds = %121
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load i8*, i8** %9, align 8
  %131 = call %struct.TYPE_26__* @dt_idhash_lookup(i32* %129, i8* %130)
  store %struct.TYPE_26__* %131, %struct.TYPE_26__** %13, align 8
  %132 = icmp ne %struct.TYPE_26__* %131, null
  br i1 %132, label %133, label %184

133:                                              ; preds = %126
  %134 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %135 = icmp ne %struct.TYPE_27__* %134, %16
  br i1 %135, label %136, label %164

136:                                              ; preds = %133
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = ptrtoint i8* %139 to i64
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  %143 = load i32, i32* @STB_GLOBAL, align 4
  %144 = load i32, i32* @STT_NOTYPE, align 4
  %145 = call i32 @GELF_ST_INFO(i32 %143, i32 %144)
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %146, i32 0, i32 5
  store i32 %145, i32* %147, align 8
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 4
  store i64 0, i64* %149, align 8
  %150 = load i32, i32* @SHN_UNDEF, align 4
  %151 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 8
  %153 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %153, i32 0, i32 2
  store i64 0, i64* %154, align 8
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @ctf_type_size(i32 %157, i32 %160)
  %162 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 8
  br label %164

164:                                              ; preds = %136, %133
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %166 = icmp ne %struct.TYPE_23__* %165, null
  br i1 %166, label %167, label %183

167:                                              ; preds = %164
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 2
  store i32 %170, i32* %172, align 4
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 0
  store i8* %175, i8** %177, align 8
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 8
  br label %183

183:                                              ; preds = %167, %164
  store i32 0, i32* %6, align 4
  br label %194

184:                                              ; preds = %126, %121
  br label %185

185:                                              ; preds = %184, %85, %79
  %186 = load i32, i32* %14, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %14, align 4
  %188 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %189 = call %struct.TYPE_25__* @dt_list_next(%struct.TYPE_25__* %188)
  store %struct.TYPE_25__* %189, %struct.TYPE_25__** %12, align 8
  br label %68

190:                                              ; preds = %68
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %192 = load i32, i32* @EDT_NOSYM, align 4
  %193 = call i32 @dt_set_errno(%struct.TYPE_24__* %191, i32 %192)
  store i32 %193, i32* %6, align 4
  br label %194

194:                                              ; preds = %190, %183, %120, %41, %35
  %195 = load i32, i32* %6, align 4
  ret i32 %195
}

declare dso_local %struct.TYPE_25__* @dt_module_from_object(%struct.TYPE_24__*, i8*) #1

declare dso_local i32 @dt_module_load(%struct.TYPE_24__*, %struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @dt_list_next(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_26__* @dt_idhash_lookup(i32*, i8*) #1

declare dso_local i32 @GELF_ST_INFO(i32, i32) #1

declare dso_local i32 @ctf_type_size(i32, i32) #1

declare dso_local i32 @dt_set_errno(%struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
