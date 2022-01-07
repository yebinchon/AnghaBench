; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/genksyms/extr_genksyms.c___add_symbol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/genksyms/extr_genksyms.c___add_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32, i8*, i32, i32, i32, i64, %struct.symbol*, i32*, i32*, %struct.string_list* }
%struct.string_list = type { i32 }

@HASH_BUCKETS = common dso_local global i64 0, align 8
@STATUS_UNCHANGED = common dso_local global i32 0, align 4
@symtab = common dso_local global %struct.symbol** null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c" modversion is unchanged\0A\00", align 1
@flag_preserve = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"ignoring \00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c" modversion change\0A\00", align 1
@STATUS_DEFINED = common dso_local global i32 0, align 4
@STATUS_MODIFIED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"redefinition of %s\00", align 1
@nsyms = common dso_local global i32 0, align 4
@flag_debug = common dso_local global i64 0, align 8
@debugfile = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Defn for %s %s == <\00", align 1
@symbol_type_name = common dso_local global i8** null, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"extern \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symbol* (i8*, i32, %struct.string_list*, i32, i32)* @__add_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symbol* @__add_symbol(i8* %0, i32 %1, %struct.string_list* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.string_list*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.symbol*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.symbol**, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.string_list* %2, %struct.string_list** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @crc32(i8* %16)
  %18 = load i64, i64* @HASH_BUCKETS, align 8
  %19 = urem i64 %17, %18
  store i64 %19, i64* %12, align 8
  %20 = load i32, i32* @STATUS_UNCHANGED, align 4
  store i32 %20, i32* %14, align 4
  %21 = load %struct.symbol**, %struct.symbol*** @symtab, align 8
  %22 = load i64, i64* %12, align 8
  %23 = getelementptr inbounds %struct.symbol*, %struct.symbol** %21, i64 %22
  %24 = load %struct.symbol*, %struct.symbol** %23, align 8
  store %struct.symbol* %24, %struct.symbol** %13, align 8
  br label %25

25:                                               ; preds = %125, %5
  %26 = load %struct.symbol*, %struct.symbol** %13, align 8
  %27 = icmp ne %struct.symbol* %26, null
  br i1 %27, label %28, label %129

28:                                               ; preds = %25
  %29 = load %struct.symbol*, %struct.symbol** %13, align 8
  %30 = getelementptr inbounds %struct.symbol, %struct.symbol* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @map_to_ns(i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @map_to_ns(i32 %33)
  %35 = icmp eq i64 %32, %34
  br i1 %35, label %36, label %124

36:                                               ; preds = %28
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.symbol*, %struct.symbol** %13, align 8
  %39 = getelementptr inbounds %struct.symbol, %struct.symbol* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @strcmp(i8* %37, i8* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %124

43:                                               ; preds = %36
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %123

47:                                               ; preds = %43
  %48 = load %struct.symbol*, %struct.symbol** %13, align 8
  %49 = getelementptr inbounds %struct.symbol, %struct.symbol* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %81

53:                                               ; preds = %47
  %54 = load %struct.symbol*, %struct.symbol** %13, align 8
  %55 = getelementptr inbounds %struct.symbol, %struct.symbol* %54, i32 0, i32 9
  %56 = load %struct.string_list*, %struct.string_list** %55, align 8
  %57 = load %struct.string_list*, %struct.string_list** %9, align 8
  %58 = call i64 @equal_list(%struct.string_list* %56, %struct.string_list* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %53
  %61 = load %struct.symbol*, %struct.symbol** %13, align 8
  %62 = getelementptr inbounds %struct.symbol, %struct.symbol* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %60
  %66 = load %struct.symbol*, %struct.symbol** %13, align 8
  %67 = getelementptr inbounds %struct.symbol, %struct.symbol* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = call i32 (...) @print_location()
  %72 = load i32, i32* %8, align 4
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @print_type_name(i32 %72, i8* %73)
  %75 = load i32, i32* @stderr, align 4
  %76 = call i32 (i32, i8*, ...) @fprintf(i32 %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %70, %65, %60
  %78 = load %struct.symbol*, %struct.symbol** %13, align 8
  %79 = getelementptr inbounds %struct.symbol, %struct.symbol* %78, i32 0, i32 2
  store i32 1, i32* %79, align 8
  %80 = load %struct.symbol*, %struct.symbol** %13, align 8
  store %struct.symbol* %80, %struct.symbol** %6, align 8
  br label %223

81:                                               ; preds = %53, %47
  %82 = load %struct.symbol*, %struct.symbol** %13, align 8
  %83 = getelementptr inbounds %struct.symbol, %struct.symbol* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %117, label %86

86:                                               ; preds = %81
  %87 = load %struct.symbol*, %struct.symbol** %13, align 8
  %88 = getelementptr inbounds %struct.symbol, %struct.symbol* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %86
  %92 = load i64, i64* @flag_preserve, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %91
  %95 = call i32 (...) @print_location()
  %96 = load i32, i32* @stderr, align 4
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i32, i32* %8, align 4
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 @print_type_name(i32 %98, i8* %99)
  %101 = load i32, i32* @stderr, align 4
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %101, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %103 = load %struct.symbol*, %struct.symbol** %13, align 8
  %104 = getelementptr inbounds %struct.symbol, %struct.symbol* %103, i32 0, i32 2
  store i32 1, i32* %104, align 8
  %105 = load %struct.symbol*, %struct.symbol** %13, align 8
  store %struct.symbol* %105, %struct.symbol** %6, align 8
  br label %223

106:                                              ; preds = %91, %86
  %107 = load %struct.symbol*, %struct.symbol** %13, align 8
  %108 = call i64 @is_unknown_symbol(%struct.symbol* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32, i32* @STATUS_DEFINED, align 4
  br label %114

112:                                              ; preds = %106
  %113 = load i32, i32* @STATUS_MODIFIED, align 4
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32 [ %111, %110 ], [ %113, %112 ]
  store i32 %115, i32* %14, align 4
  br label %116

116:                                              ; preds = %114
  br label %121

117:                                              ; preds = %81
  %118 = load i8*, i8** %7, align 8
  %119 = call i32 @error_with_pos(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %118)
  %120 = load %struct.symbol*, %struct.symbol** %13, align 8
  store %struct.symbol* %120, %struct.symbol** %6, align 8
  br label %223

121:                                              ; preds = %116
  br label %122

122:                                              ; preds = %121
  br label %123

123:                                              ; preds = %122, %46
  br label %129

124:                                              ; preds = %36, %28
  br label %125

125:                                              ; preds = %124
  %126 = load %struct.symbol*, %struct.symbol** %13, align 8
  %127 = getelementptr inbounds %struct.symbol, %struct.symbol* %126, i32 0, i32 6
  %128 = load %struct.symbol*, %struct.symbol** %127, align 8
  store %struct.symbol* %128, %struct.symbol** %13, align 8
  br label %25

129:                                              ; preds = %123, %25
  %130 = load %struct.symbol*, %struct.symbol** %13, align 8
  %131 = icmp ne %struct.symbol* %130, null
  br i1 %131, label %132, label %158

132:                                              ; preds = %129
  %133 = load %struct.symbol**, %struct.symbol*** @symtab, align 8
  %134 = load i64, i64* %12, align 8
  %135 = getelementptr inbounds %struct.symbol*, %struct.symbol** %133, i64 %134
  store %struct.symbol** %135, %struct.symbol*** %15, align 8
  br label %136

136:                                              ; preds = %151, %132
  %137 = load %struct.symbol**, %struct.symbol*** %15, align 8
  %138 = load %struct.symbol*, %struct.symbol** %137, align 8
  %139 = icmp ne %struct.symbol* %138, null
  br i1 %139, label %140, label %155

140:                                              ; preds = %136
  %141 = load %struct.symbol**, %struct.symbol*** %15, align 8
  %142 = load %struct.symbol*, %struct.symbol** %141, align 8
  %143 = load %struct.symbol*, %struct.symbol** %13, align 8
  %144 = icmp eq %struct.symbol* %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load %struct.symbol*, %struct.symbol** %13, align 8
  %147 = getelementptr inbounds %struct.symbol, %struct.symbol* %146, i32 0, i32 6
  %148 = load %struct.symbol*, %struct.symbol** %147, align 8
  %149 = load %struct.symbol**, %struct.symbol*** %15, align 8
  store %struct.symbol* %148, %struct.symbol** %149, align 8
  br label %155

150:                                              ; preds = %140
  br label %151

151:                                              ; preds = %150
  %152 = load %struct.symbol**, %struct.symbol*** %15, align 8
  %153 = load %struct.symbol*, %struct.symbol** %152, align 8
  %154 = getelementptr inbounds %struct.symbol, %struct.symbol* %153, i32 0, i32 6
  store %struct.symbol** %154, %struct.symbol*** %15, align 8
  br label %136

155:                                              ; preds = %145, %136
  %156 = load i32, i32* @nsyms, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* @nsyms, align 4
  br label %158

158:                                              ; preds = %155, %129
  %159 = call %struct.symbol* @xmalloc(i32 72)
  store %struct.symbol* %159, %struct.symbol** %13, align 8
  %160 = load i8*, i8** %7, align 8
  %161 = load %struct.symbol*, %struct.symbol** %13, align 8
  %162 = getelementptr inbounds %struct.symbol, %struct.symbol* %161, i32 0, i32 1
  store i8* %160, i8** %162, align 8
  %163 = load i32, i32* %8, align 4
  %164 = load %struct.symbol*, %struct.symbol** %13, align 8
  %165 = getelementptr inbounds %struct.symbol, %struct.symbol* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load %struct.string_list*, %struct.string_list** %9, align 8
  %167 = load %struct.symbol*, %struct.symbol** %13, align 8
  %168 = getelementptr inbounds %struct.symbol, %struct.symbol* %167, i32 0, i32 9
  store %struct.string_list* %166, %struct.string_list** %168, align 8
  %169 = load %struct.symbol*, %struct.symbol** %13, align 8
  %170 = getelementptr inbounds %struct.symbol, %struct.symbol* %169, i32 0, i32 8
  store i32* null, i32** %170, align 8
  %171 = load %struct.symbol*, %struct.symbol** %13, align 8
  %172 = getelementptr inbounds %struct.symbol, %struct.symbol* %171, i32 0, i32 7
  store i32* null, i32** %172, align 8
  %173 = load i32, i32* %10, align 4
  %174 = load %struct.symbol*, %struct.symbol** %13, align 8
  %175 = getelementptr inbounds %struct.symbol, %struct.symbol* %174, i32 0, i32 3
  store i32 %173, i32* %175, align 4
  %176 = load %struct.symbol**, %struct.symbol*** @symtab, align 8
  %177 = load i64, i64* %12, align 8
  %178 = getelementptr inbounds %struct.symbol*, %struct.symbol** %176, i64 %177
  %179 = load %struct.symbol*, %struct.symbol** %178, align 8
  %180 = load %struct.symbol*, %struct.symbol** %13, align 8
  %181 = getelementptr inbounds %struct.symbol, %struct.symbol* %180, i32 0, i32 6
  store %struct.symbol* %179, %struct.symbol** %181, align 8
  %182 = load %struct.symbol*, %struct.symbol** %13, align 8
  %183 = load %struct.symbol**, %struct.symbol*** @symtab, align 8
  %184 = load i64, i64* %12, align 8
  %185 = getelementptr inbounds %struct.symbol*, %struct.symbol** %183, i64 %184
  store %struct.symbol* %182, %struct.symbol** %185, align 8
  %186 = load i32, i32* %11, align 4
  %187 = icmp ne i32 %186, 0
  %188 = xor i1 %187, true
  %189 = zext i1 %188 to i32
  %190 = load %struct.symbol*, %struct.symbol** %13, align 8
  %191 = getelementptr inbounds %struct.symbol, %struct.symbol* %190, i32 0, i32 2
  store i32 %189, i32* %191, align 8
  %192 = load i32, i32* %14, align 4
  %193 = load %struct.symbol*, %struct.symbol** %13, align 8
  %194 = getelementptr inbounds %struct.symbol, %struct.symbol* %193, i32 0, i32 4
  store i32 %192, i32* %194, align 8
  %195 = load %struct.symbol*, %struct.symbol** %13, align 8
  %196 = getelementptr inbounds %struct.symbol, %struct.symbol* %195, i32 0, i32 5
  store i64 0, i64* %196, align 8
  %197 = load i64, i64* @flag_debug, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %219

199:                                              ; preds = %158
  %200 = load i32, i32* @debugfile, align 4
  %201 = load i8**, i8*** @symbol_type_name, align 8
  %202 = load i32, i32* %8, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds i8*, i8** %201, i64 %203
  %205 = load i8*, i8** %204, align 8
  %206 = load i8*, i8** %7, align 8
  %207 = call i32 (i32, i8*, ...) @fprintf(i32 %200, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %205, i8* %206)
  %208 = load i32, i32* %10, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %199
  %211 = load i32, i32* @debugfile, align 4
  %212 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %211)
  br label %213

213:                                              ; preds = %210, %199
  %214 = load i32, i32* @debugfile, align 4
  %215 = load %struct.string_list*, %struct.string_list** %9, align 8
  %216 = call i32 @print_list(i32 %214, %struct.string_list* %215)
  %217 = load i32, i32* @debugfile, align 4
  %218 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %217)
  br label %219

219:                                              ; preds = %213, %158
  %220 = load i32, i32* @nsyms, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* @nsyms, align 4
  %222 = load %struct.symbol*, %struct.symbol** %13, align 8
  store %struct.symbol* %222, %struct.symbol** %6, align 8
  br label %223

223:                                              ; preds = %219, %117, %94, %77
  %224 = load %struct.symbol*, %struct.symbol** %6, align 8
  ret %struct.symbol* %224
}

declare dso_local i64 @crc32(i8*) #1

declare dso_local i64 @map_to_ns(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @equal_list(%struct.string_list*, %struct.string_list*) #1

declare dso_local i32 @print_location(...) #1

declare dso_local i32 @print_type_name(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @is_unknown_symbol(%struct.symbol*) #1

declare dso_local i32 @error_with_pos(i8*, i8*) #1

declare dso_local %struct.symbol* @xmalloc(i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @print_list(i32, %struct.string_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
