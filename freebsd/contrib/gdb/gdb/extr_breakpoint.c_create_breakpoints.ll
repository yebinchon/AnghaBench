; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_create_breakpoints.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_create_breakpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab_and_line = type { i32, i32 }
%struct.expression = type { i32 }
%struct.breakpoint = type { i32, i8*, i8*, i32, i32, i64, %struct.TYPE_2__*, %struct.expression*, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.symtabs_and_lines = type { i32, %struct.symtab_and_line* }

@bp_hardware_breakpoint = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"No hardware breakpoint support in the target.\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Hardware breakpoints used exceeds limit.\00", align 1
@breakpoint_count = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"*0x%s\00", align 1
@bp_enabled = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"Junk at end of pending breakpoint condition expression\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.symtab_and_line*, i8**, %struct.expression**, i8**, i32, i32, i32, i32, i32, %struct.breakpoint*)* @create_breakpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_breakpoints(i32 %0, %struct.symtab_and_line* %1, i8** %2, %struct.expression** %3, i8** %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, %struct.breakpoint* %10) #0 {
  %12 = alloca %struct.symtabs_and_lines, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.expression**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.breakpoint*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.breakpoint*, align 8
  %26 = alloca %struct.symtab_and_line, align 4
  %27 = alloca i8*, align 8
  %28 = bitcast %struct.symtabs_and_lines* %12 to { i32, %struct.symtab_and_line* }*
  %29 = getelementptr inbounds { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %28, i32 0, i32 0
  store i32 %0, i32* %29, align 8
  %30 = getelementptr inbounds { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %28, i32 0, i32 1
  store %struct.symtab_and_line* %1, %struct.symtab_and_line** %30, align 8
  store i8** %2, i8*** %13, align 8
  store %struct.expression** %3, %struct.expression*** %14, align 8
  store i8** %4, i8*** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  store %struct.breakpoint* %10, %struct.breakpoint** %21, align 8
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* @bp_hardware_breakpoint, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %11
  %35 = call i32 (...) @hw_breakpoint_used_count()
  store i32 %35, i32* %22, align 4
  %36 = load i32, i32* @bp_hardware_breakpoint, align 4
  %37 = load i32, i32* %22, align 4
  %38 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %12, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %37, %39
  %41 = call i32 @TARGET_CAN_USE_HARDWARE_WATCHPOINT(i32 %36, i32 %40, i32 0)
  store i32 %41, i32* %23, align 4
  %42 = load i32, i32* %23, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = call i32 @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %52

46:                                               ; preds = %34
  %47 = load i32, i32* %23, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %46
  br label %52

52:                                               ; preds = %51, %44
  br label %53

53:                                               ; preds = %52, %11
  store i32 0, i32* %24, align 4
  br label %54

54:                                               ; preds = %195, %53
  %55 = load i32, i32* %24, align 4
  %56 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %12, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %198

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %12, i32 0, i32 1
  %61 = load %struct.symtab_and_line*, %struct.symtab_and_line** %60, align 8
  %62 = load i32, i32* %24, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %61, i64 %63
  %65 = bitcast %struct.symtab_and_line* %26 to i8*
  %66 = bitcast %struct.symtab_and_line* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 8, i1 false)
  %67 = load i32, i32* %20, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %26, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %26, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @describe_other_breakpoints(i32 %71, i32 %73)
  br label %75

75:                                               ; preds = %69, %59
  %76 = load i32, i32* %16, align 4
  %77 = bitcast %struct.symtab_and_line* %26 to i64*
  %78 = load i64, i64* %77, align 4
  %79 = call %struct.breakpoint* @set_raw_breakpoint(i64 %78, i32 %76)
  store %struct.breakpoint* %79, %struct.breakpoint** %25, align 8
  %80 = load i64, i64* @breakpoint_count, align 8
  %81 = add nsw i64 %80, 1
  %82 = call i32 @set_breakpoint_count(i64 %81)
  %83 = load i64, i64* @breakpoint_count, align 8
  %84 = load %struct.breakpoint*, %struct.breakpoint** %25, align 8
  %85 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %84, i32 0, i32 9
  store i64 %83, i64* %85, align 8
  %86 = load %struct.expression**, %struct.expression*** %14, align 8
  %87 = load i32, i32* %24, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.expression*, %struct.expression** %86, i64 %88
  %90 = load %struct.expression*, %struct.expression** %89, align 8
  %91 = load %struct.breakpoint*, %struct.breakpoint** %25, align 8
  %92 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %91, i32 0, i32 7
  store %struct.expression* %90, %struct.expression** %92, align 8
  %93 = load i32, i32* %18, align 4
  %94 = load %struct.breakpoint*, %struct.breakpoint** %25, align 8
  %95 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load i8**, i8*** %13, align 8
  %97 = load i32, i32* %24, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %110

102:                                              ; preds = %75
  %103 = load i8**, i8*** %13, align 8
  %104 = load i32, i32* %24, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.breakpoint*, %struct.breakpoint** %25, align 8
  %109 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  br label %120

110:                                              ; preds = %75
  %111 = load %struct.breakpoint*, %struct.breakpoint** %25, align 8
  %112 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %111, i32 0, i32 1
  %113 = load %struct.breakpoint*, %struct.breakpoint** %25, align 8
  %114 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %113, i32 0, i32 6
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @paddr(i32 %117)
  %119 = call i32 @xasprintf(i8** %112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %110, %102
  %121 = load i8**, i8*** %15, align 8
  %122 = load i32, i32* %24, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.breakpoint*, %struct.breakpoint** %25, align 8
  %127 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %126, i32 0, i32 2
  store i8* %125, i8** %127, align 8
  %128 = load i32, i32* %19, align 4
  %129 = load %struct.breakpoint*, %struct.breakpoint** %25, align 8
  %130 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* @bp_enabled, align 4
  %132 = load %struct.breakpoint*, %struct.breakpoint** %25, align 8
  %133 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %132, i32 0, i32 8
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* %17, align 4
  %135 = load %struct.breakpoint*, %struct.breakpoint** %25, align 8
  %136 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 4
  %137 = load %struct.breakpoint*, %struct.breakpoint** %21, align 8
  %138 = icmp ne %struct.breakpoint* %137, null
  br i1 %138, label %139, label %192

139:                                              ; preds = %120
  %140 = load %struct.breakpoint*, %struct.breakpoint** %21, align 8
  %141 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %140, i32 0, i32 2
  %142 = load i8*, i8** %141, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %169

144:                                              ; preds = %139
  %145 = load %struct.breakpoint*, %struct.breakpoint** %21, align 8
  %146 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %145, i32 0, i32 2
  %147 = load i8*, i8** %146, align 8
  store i8* %147, i8** %27, align 8
  %148 = load i8*, i8** %27, align 8
  %149 = load i8*, i8** %27, align 8
  %150 = call i32 @strlen(i8* %149)
  %151 = call i8* @savestring(i8* %148, i32 %150)
  %152 = load %struct.breakpoint*, %struct.breakpoint** %25, align 8
  %153 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %152, i32 0, i32 2
  store i8* %151, i8** %153, align 8
  %154 = load %struct.breakpoint*, %struct.breakpoint** %25, align 8
  %155 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %154, i32 0, i32 6
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @block_for_pc(i32 %158)
  %160 = call %struct.expression* @parse_exp_1(i8** %27, i32 %159, i32 0)
  %161 = load %struct.breakpoint*, %struct.breakpoint** %25, align 8
  %162 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %161, i32 0, i32 7
  store %struct.expression* %160, %struct.expression** %162, align 8
  %163 = load i8*, i8** %27, align 8
  %164 = load i8, i8* %163, align 1
  %165 = icmp ne i8 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %144
  %167 = call i32 @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  br label %168

168:                                              ; preds = %166, %144
  br label %169

169:                                              ; preds = %168, %139
  %170 = load %struct.breakpoint*, %struct.breakpoint** %21, align 8
  %171 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %170, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %169
  %175 = load %struct.breakpoint*, %struct.breakpoint** %21, align 8
  %176 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %175, i32 0, i32 5
  %177 = load i64, i64* %176, align 8
  %178 = call i64 @copy_command_lines(i64 %177)
  %179 = load %struct.breakpoint*, %struct.breakpoint** %25, align 8
  %180 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %179, i32 0, i32 5
  store i64 %178, i64* %180, align 8
  br label %181

181:                                              ; preds = %174, %169
  %182 = load %struct.breakpoint*, %struct.breakpoint** %21, align 8
  %183 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.breakpoint*, %struct.breakpoint** %25, align 8
  %186 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %185, i32 0, i32 3
  store i32 %184, i32* %186, align 8
  %187 = load %struct.breakpoint*, %struct.breakpoint** %21, align 8
  %188 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.breakpoint*, %struct.breakpoint** %25, align 8
  %191 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  br label %192

192:                                              ; preds = %181, %120
  %193 = load %struct.breakpoint*, %struct.breakpoint** %25, align 8
  %194 = call i32 @mention(%struct.breakpoint* %193)
  br label %195

195:                                              ; preds = %192
  %196 = load i32, i32* %24, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %24, align 4
  br label %54

198:                                              ; preds = %54
  ret void
}

declare dso_local i32 @hw_breakpoint_used_count(...) #1

declare dso_local i32 @TARGET_CAN_USE_HARDWARE_WATCHPOINT(i32, i32, i32) #1

declare dso_local i32 @error(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @describe_other_breakpoints(i32, i32) #1

declare dso_local %struct.breakpoint* @set_raw_breakpoint(i64, i32) #1

declare dso_local i32 @set_breakpoint_count(i64) #1

declare dso_local i32 @xasprintf(i8**, i8*, i32) #1

declare dso_local i32 @paddr(i32) #1

declare dso_local i8* @savestring(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.expression* @parse_exp_1(i8**, i32, i32) #1

declare dso_local i32 @block_for_pc(i32) #1

declare dso_local i64 @copy_command_lines(i64) #1

declare dso_local i32 @mention(%struct.breakpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
