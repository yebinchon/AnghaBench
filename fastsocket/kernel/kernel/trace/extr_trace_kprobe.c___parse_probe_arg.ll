; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_kprobe.c___parse_probe_arg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_kprobe.c___parse_probe_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fetch_type = type { i32, i32* }
%struct.fetch_param = type { i32, i8* }
%struct.deref_fetch_param = type { i64, %struct.fetch_param }

@FETCH_MTD_reg = common dso_local global i64 0, align 8
@FETCH_MTD_memory = common dso_local global i64 0, align 8
@FETCH_MTD_symbol = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FETCH_MTD_deref = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"%s type has no corresponding fetch method.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.fetch_type*, %struct.fetch_param*, i32)* @__parse_probe_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__parse_probe_arg(i8* %0, %struct.fetch_type* %1, %struct.fetch_param* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fetch_type*, align 8
  %8 = alloca %struct.fetch_param*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.deref_fetch_param*, align 8
  %15 = alloca %struct.fetch_type*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.fetch_type* %1, %struct.fetch_type** %7, align 8
  store %struct.fetch_param* %2, %struct.fetch_param** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  switch i32 %19, label %166 [
    i32 36, label %20
    i32 37, label %27
    i32 64, label %48
    i32 43, label %103
    i32 45, label %106
  ]

20:                                               ; preds = %4
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load %struct.fetch_type*, %struct.fetch_type** %7, align 8
  %24 = load %struct.fetch_param*, %struct.fetch_param** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @parse_probe_vars(i8* %22, %struct.fetch_type* %23, %struct.fetch_param* %24, i32 %25)
  store i32 %26, i32* %10, align 4
  br label %166

27:                                               ; preds = %4
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = call i32 @regs_query_register_offset(i8* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %27
  %34 = load %struct.fetch_type*, %struct.fetch_type** %7, align 8
  %35 = getelementptr inbounds %struct.fetch_type, %struct.fetch_type* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @FETCH_MTD_reg, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.fetch_param*, %struct.fetch_param** %8, align 8
  %41 = getelementptr inbounds %struct.fetch_param, %struct.fetch_param* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.fetch_param*, %struct.fetch_param** %8, align 8
  %46 = getelementptr inbounds %struct.fetch_param, %struct.fetch_param* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %33, %27
  br label %166

48:                                               ; preds = %4
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = call i32 @isdigit(i8 signext %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %48
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = call i32 @strict_strtoul(i8* %56, i32 0, i64* %11)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %166

61:                                               ; preds = %54
  %62 = load %struct.fetch_type*, %struct.fetch_type** %7, align 8
  %63 = getelementptr inbounds %struct.fetch_type, %struct.fetch_type* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @FETCH_MTD_memory, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.fetch_param*, %struct.fetch_param** %8, align 8
  %69 = getelementptr inbounds %struct.fetch_param, %struct.fetch_param* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i64, i64* %11, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = load %struct.fetch_param*, %struct.fetch_param** %8, align 8
  %73 = getelementptr inbounds %struct.fetch_param, %struct.fetch_param* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  br label %102

74:                                               ; preds = %48
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = call i32 @split_symbol_offset(i8* %76, i64* %12)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %166

81:                                               ; preds = %74
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i64, i64* %12, align 8
  %85 = call i8* @alloc_symbol_cache(i8* %83, i64 %84)
  %86 = load %struct.fetch_param*, %struct.fetch_param** %8, align 8
  %87 = getelementptr inbounds %struct.fetch_param, %struct.fetch_param* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load %struct.fetch_param*, %struct.fetch_param** %8, align 8
  %89 = getelementptr inbounds %struct.fetch_param, %struct.fetch_param* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %81
  %93 = load %struct.fetch_type*, %struct.fetch_type** %7, align 8
  %94 = getelementptr inbounds %struct.fetch_type, %struct.fetch_type* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @FETCH_MTD_symbol, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.fetch_param*, %struct.fetch_param** %8, align 8
  %100 = getelementptr inbounds %struct.fetch_param, %struct.fetch_param* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %92, %81
  br label %102

102:                                              ; preds = %101, %61
  br label %166

103:                                              ; preds = %4
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %6, align 8
  br label %106

106:                                              ; preds = %4, %103
  %107 = load i8*, i8** %6, align 8
  %108 = call i8* @strchr(i8* %107, i8 signext 40)
  store i8* %108, i8** %13, align 8
  %109 = load i8*, i8** %13, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %106
  br label %166

112:                                              ; preds = %106
  %113 = load i8*, i8** %13, align 8
  store i8 0, i8* %113, align 1
  %114 = load i8*, i8** %6, align 8
  %115 = call i32 @strict_strtol(i8* %114, i32 0, i64* %12)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %166

119:                                              ; preds = %112
  %120 = load i8*, i8** %13, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  store i8* %121, i8** %6, align 8
  %122 = load i8*, i8** %6, align 8
  %123 = call i8* @strrchr(i8* %122, i8 signext 41)
  store i8* %123, i8** %13, align 8
  %124 = load i8*, i8** %13, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %165

126:                                              ; preds = %119
  %127 = call %struct.fetch_type* @find_fetch_type(i32* null)
  store %struct.fetch_type* %127, %struct.fetch_type** %15, align 8
  %128 = load i8*, i8** %13, align 8
  store i8 0, i8* %128, align 1
  %129 = load i32, i32* @GFP_KERNEL, align 4
  %130 = call %struct.deref_fetch_param* @kzalloc(i32 24, i32 %129)
  store %struct.deref_fetch_param* %130, %struct.deref_fetch_param** %14, align 8
  %131 = load %struct.deref_fetch_param*, %struct.deref_fetch_param** %14, align 8
  %132 = icmp ne %struct.deref_fetch_param* %131, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %126
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %5, align 4
  br label %183

136:                                              ; preds = %126
  %137 = load i64, i64* %12, align 8
  %138 = load %struct.deref_fetch_param*, %struct.deref_fetch_param** %14, align 8
  %139 = getelementptr inbounds %struct.deref_fetch_param, %struct.deref_fetch_param* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  %140 = load i8*, i8** %6, align 8
  %141 = load %struct.fetch_type*, %struct.fetch_type** %15, align 8
  %142 = load %struct.deref_fetch_param*, %struct.deref_fetch_param** %14, align 8
  %143 = getelementptr inbounds %struct.deref_fetch_param, %struct.deref_fetch_param* %142, i32 0, i32 1
  %144 = load i32, i32* %9, align 4
  %145 = call i32 @__parse_probe_arg(i8* %140, %struct.fetch_type* %141, %struct.fetch_param* %143, i32 %144)
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %136
  %149 = load %struct.deref_fetch_param*, %struct.deref_fetch_param** %14, align 8
  %150 = call i32 @kfree(%struct.deref_fetch_param* %149)
  br label %164

151:                                              ; preds = %136
  %152 = load %struct.fetch_type*, %struct.fetch_type** %7, align 8
  %153 = getelementptr inbounds %struct.fetch_type, %struct.fetch_type* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load i64, i64* @FETCH_MTD_deref, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.fetch_param*, %struct.fetch_param** %8, align 8
  %159 = getelementptr inbounds %struct.fetch_param, %struct.fetch_param* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  %160 = load %struct.deref_fetch_param*, %struct.deref_fetch_param** %14, align 8
  %161 = bitcast %struct.deref_fetch_param* %160 to i8*
  %162 = load %struct.fetch_param*, %struct.fetch_param** %8, align 8
  %163 = getelementptr inbounds %struct.fetch_param, %struct.fetch_param* %162, i32 0, i32 1
  store i8* %161, i8** %163, align 8
  br label %164

164:                                              ; preds = %151, %148
  br label %165

165:                                              ; preds = %164, %119
  br label %166

166:                                              ; preds = %4, %165, %118, %111, %102, %80, %60, %47, %20
  %167 = load i32, i32* %10, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %181, label %169

169:                                              ; preds = %166
  %170 = load %struct.fetch_param*, %struct.fetch_param** %8, align 8
  %171 = getelementptr inbounds %struct.fetch_param, %struct.fetch_param* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %181, label %174

174:                                              ; preds = %169
  %175 = load %struct.fetch_type*, %struct.fetch_type** %7, align 8
  %176 = getelementptr inbounds %struct.fetch_type, %struct.fetch_type* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %177)
  %179 = load i32, i32* @EINVAL, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %10, align 4
  br label %181

181:                                              ; preds = %174, %169, %166
  %182 = load i32, i32* %10, align 4
  store i32 %182, i32* %5, align 4
  br label %183

183:                                              ; preds = %181, %133
  %184 = load i32, i32* %5, align 4
  ret i32 %184
}

declare dso_local i32 @parse_probe_vars(i8*, %struct.fetch_type*, %struct.fetch_param*, i32) #1

declare dso_local i32 @regs_query_register_offset(i8*) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @split_symbol_offset(i8*, i64*) #1

declare dso_local i8* @alloc_symbol_cache(i8*, i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strict_strtol(i8*, i32, i64*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local %struct.fetch_type* @find_fetch_type(i32*) #1

declare dso_local %struct.deref_fetch_param* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.deref_fetch_param*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
