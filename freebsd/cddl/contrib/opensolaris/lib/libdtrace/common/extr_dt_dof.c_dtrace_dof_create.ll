; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_dof.c_dtrace_dof_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_dof.c_dtrace_dof_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_50__ = type { i32, i32, %struct.TYPE_53__, %struct.TYPE_53__, %struct.TYPE_42__ }
%struct.TYPE_53__ = type { i64, %struct.TYPE_47__* }
%struct.TYPE_47__ = type { i8*, i32*, %struct.TYPE_52__*, %struct.TYPE_51__* }
%struct.TYPE_52__ = type { i32, i32, i32, i64, i32*, %struct.TYPE_52__* }
%struct.TYPE_51__ = type { i32, %struct.TYPE_52__*, %struct.TYPE_46__, %struct.TYPE_49__ }
%struct.TYPE_46__ = type { i32* }
%struct.TYPE_49__ = type { i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_42__ = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_48__ = type { i64, %struct.TYPE_53__, i32**, i32 }
%struct.TYPE_44__ = type { i64, i64, i32, i64, i8*, i8*, i8*, i32, i32, i32, i64, i8*, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_43__ = type { i64, i64, i64, i32 }
%struct.TYPE_45__ = type { i32, i64, i64 }

@DTRACE_D_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DOF_SECT_STRTAB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DOF_SECT_XLIMPORT = common dso_local global i32 0, align 4
@DOF_SECIDX_NONE = common dso_local global i8* null, align 8
@DOF_SECT_PROBEDESC = common dso_local global i64 0, align 8
@DOF_SECT_ACTDESC = common dso_local global i64 0, align 8
@DOF_SECT_ECBDESC = common dso_local global i64 0, align 8
@DTRACE_D_PROBES = common dso_local global i32 0, align 4
@DTRACE_D_STRIP = common dso_local global i32 0, align 4
@_dtrace_version = common dso_local global i32* null, align 8
@DOF_SECT_COMMENTS = common dso_local global i32 0, align 4
@DOF_SECT_UTSNAME = common dso_local global i32 0, align 4
@DOF_SECF_LOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"dof\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dtrace_dof_create(%struct.TYPE_50__* %0, %struct.TYPE_48__* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_50__*, align 8
  %6 = alloca %struct.TYPE_48__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_42__*, align 8
  %9 = alloca %struct.TYPE_51__*, align 8
  %10 = alloca %struct.TYPE_51__*, align 8
  %11 = alloca %struct.TYPE_49__*, align 8
  %12 = alloca %struct.TYPE_52__*, align 8
  %13 = alloca %struct.TYPE_53__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_53__*, align 8
  %17 = alloca %struct.TYPE_53__*, align 8
  %18 = alloca %struct.TYPE_44__*, align 8
  %19 = alloca %struct.TYPE_43__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_45__, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_47__*, align 8
  %27 = alloca %struct.TYPE_52__*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca %struct.TYPE_53__*, align 8
  %32 = alloca %struct.TYPE_47__*, align 8
  %33 = alloca i64, align 8
  %34 = alloca %struct.TYPE_44__, align 8
  %35 = alloca %struct.TYPE_44__, align 8
  %36 = alloca i32, align 4
  store %struct.TYPE_50__* %0, %struct.TYPE_50__** %5, align 8
  store %struct.TYPE_48__* %1, %struct.TYPE_48__** %6, align 8
  store i32 %2, i32* %7, align 4
  %37 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %37, i32 0, i32 4
  store %struct.TYPE_42__* %38, %struct.TYPE_42__** %8, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @DTRACE_D_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %3
  %45 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %46 = load i32, i32* @EINVAL, align 4
  %47 = call i32 @dt_set_errno(%struct.TYPE_50__* %45, i32 %46)
  store i8* null, i8** %4, align 8
  br label %627

48:                                               ; preds = %3
  %49 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %55 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @dof_hdr(%struct.TYPE_50__* %54, i32 %57, %struct.TYPE_45__* %22)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  store i8* null, i8** %4, align 8
  br label %627

61:                                               ; preds = %48
  %62 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %63 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %64 = call i64 @dt_dof_reset(%struct.TYPE_50__* %62, %struct.TYPE_48__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i8* null, i8** %4, align 8
  br label %627

67:                                               ; preds = %61
  store %struct.TYPE_51__* null, %struct.TYPE_51__** %10, align 8
  %68 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %68, i32 0, i32 1
  %70 = call %struct.TYPE_53__* @dt_list_next(%struct.TYPE_53__* %69)
  store %struct.TYPE_53__* %70, %struct.TYPE_53__** %13, align 8
  br label %71

71:                                               ; preds = %119, %67
  %72 = load %struct.TYPE_53__*, %struct.TYPE_53__** %13, align 8
  %73 = icmp ne %struct.TYPE_53__* %72, null
  br i1 %73, label %74, label %123

74:                                               ; preds = %71
  %75 = load %struct.TYPE_53__*, %struct.TYPE_53__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_47__*, %struct.TYPE_47__** %76, align 8
  store %struct.TYPE_47__* %77, %struct.TYPE_47__** %26, align 8
  %78 = load %struct.TYPE_47__*, %struct.TYPE_47__** %26, align 8
  %79 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_52__*, %struct.TYPE_52__** %79, align 8
  store %struct.TYPE_52__* %80, %struct.TYPE_52__** %27, align 8
  %81 = load %struct.TYPE_47__*, %struct.TYPE_47__** %26, align 8
  %82 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %94

85:                                               ; preds = %74
  %86 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %87 = load %struct.TYPE_47__*, %struct.TYPE_47__** %26, align 8
  %88 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @dtrace_printf_format(%struct.TYPE_50__* %86, i32* %89, i8* null, i32 0)
  store i32 %90, i32* %25, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %25, align 4
  %93 = call i32 @MAX(i32 %91, i32 %92)
  store i32 %93, i32* %15, align 4
  br label %94

94:                                               ; preds = %85, %74
  %95 = load %struct.TYPE_47__*, %struct.TYPE_47__** %26, align 8
  %96 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_51__*, %struct.TYPE_51__** %96, align 8
  store %struct.TYPE_51__* %97, %struct.TYPE_51__** %9, align 8
  %98 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %99 = icmp eq %struct.TYPE_51__* %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %119

101:                                              ; preds = %94
  store i32 0, i32* %25, align 4
  %102 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_52__*, %struct.TYPE_52__** %103, align 8
  store %struct.TYPE_52__* %104, %struct.TYPE_52__** %27, align 8
  br label %105

105:                                              ; preds = %111, %101
  %106 = load %struct.TYPE_52__*, %struct.TYPE_52__** %27, align 8
  %107 = icmp ne %struct.TYPE_52__* %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = load i32, i32* %25, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %25, align 4
  br label %111

111:                                              ; preds = %108
  %112 = load %struct.TYPE_52__*, %struct.TYPE_52__** %27, align 8
  %113 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %112, i32 0, i32 5
  %114 = load %struct.TYPE_52__*, %struct.TYPE_52__** %113, align 8
  store %struct.TYPE_52__* %114, %struct.TYPE_52__** %27, align 8
  br label %105

115:                                              ; preds = %105
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %25, align 4
  %118 = call i32 @MAX(i32 %116, i32 %117)
  store i32 %118, i32* %14, align 4
  br label %119

119:                                              ; preds = %115, %100
  %120 = load %struct.TYPE_53__*, %struct.TYPE_53__** %13, align 8
  %121 = call %struct.TYPE_53__* @dt_list_next(%struct.TYPE_53__* %120)
  store %struct.TYPE_53__* %121, %struct.TYPE_53__** %13, align 8
  %122 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  store %struct.TYPE_51__* %122, %struct.TYPE_51__** %10, align 8
  br label %71

123:                                              ; preds = %71
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = mul i64 128, %125
  %127 = trunc i64 %126 to i32
  %128 = call i8* @alloca(i32 %127)
  %129 = bitcast i8* %128 to %struct.TYPE_44__*
  store %struct.TYPE_44__* %129, %struct.TYPE_44__** %18, align 8
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %130, 1
  %132 = call i8* @alloca(i32 %131)
  store i8* %132, i8** %24, align 8
  %133 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %134 = load i64, i64* @DOF_SECT_STRTAB, align 8
  %135 = call i8* @dof_add_lsect(%struct.TYPE_42__* %133, %struct.TYPE_44__* null, i64 %134, i32 1, i32 0, i32 0, i32 0)
  %136 = ptrtoint i8* %135 to i64
  %137 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  %139 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %140 = call i8* @dof_add_string(%struct.TYPE_42__* %139, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %141 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %180

145:                                              ; preds = %123
  %146 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %146, i32 0, i32 3
  %148 = call %struct.TYPE_53__* @dt_list_next(%struct.TYPE_53__* %147)
  store %struct.TYPE_53__* %148, %struct.TYPE_53__** %17, align 8
  br label %149

149:                                              ; preds = %176, %145
  %150 = load %struct.TYPE_53__*, %struct.TYPE_53__** %17, align 8
  %151 = icmp ne %struct.TYPE_53__* %150, null
  br i1 %151, label %152, label %179

152:                                              ; preds = %149
  %153 = load %struct.TYPE_53__*, %struct.TYPE_53__** %17, align 8
  %154 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp slt i64 %155, %158
  br i1 %159, label %160, label %175

160:                                              ; preds = %152
  %161 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %161, i32 0, i32 2
  %163 = load i32**, i32*** %162, align 8
  %164 = load %struct.TYPE_53__*, %struct.TYPE_53__** %17, align 8
  %165 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds i32*, i32** %163, i64 %166
  %168 = load i32*, i32** %167, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %175

170:                                              ; preds = %160
  %171 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %172 = load %struct.TYPE_53__*, %struct.TYPE_53__** %17, align 8
  %173 = load i32, i32* @DOF_SECT_XLIMPORT, align 4
  %174 = call i32 @dof_add_translator(%struct.TYPE_42__* %171, %struct.TYPE_53__* %172, i32 %173)
  br label %175

175:                                              ; preds = %170, %160, %152
  br label %176

176:                                              ; preds = %175
  %177 = load %struct.TYPE_53__*, %struct.TYPE_53__** %17, align 8
  %178 = call %struct.TYPE_53__* @dt_list_next(%struct.TYPE_53__* %177)
  store %struct.TYPE_53__* %178, %struct.TYPE_53__** %17, align 8
  br label %149

179:                                              ; preds = %149
  br label %180

180:                                              ; preds = %179, %123
  store %struct.TYPE_51__* null, %struct.TYPE_51__** %10, align 8
  %181 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %181, i32 0, i32 1
  %183 = call %struct.TYPE_53__* @dt_list_next(%struct.TYPE_53__* %182)
  store %struct.TYPE_53__* %183, %struct.TYPE_53__** %13, align 8
  br label %184

184:                                              ; preds = %426, %180
  %185 = load %struct.TYPE_53__*, %struct.TYPE_53__** %13, align 8
  %186 = icmp ne %struct.TYPE_53__* %185, null
  br i1 %186, label %187, label %430

187:                                              ; preds = %184
  %188 = load i8*, i8** @DOF_SECIDX_NONE, align 8
  store i8* %188, i8** %28, align 8
  %189 = load i8*, i8** @DOF_SECIDX_NONE, align 8
  store i8* %189, i8** %29, align 8
  %190 = load i8*, i8** @DOF_SECIDX_NONE, align 8
  store i8* %190, i8** %30, align 8
  %191 = load %struct.TYPE_53__*, %struct.TYPE_53__** %13, align 8
  store %struct.TYPE_53__* %191, %struct.TYPE_53__** %31, align 8
  %192 = load %struct.TYPE_53__*, %struct.TYPE_53__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_47__*, %struct.TYPE_47__** %193, align 8
  store %struct.TYPE_47__* %194, %struct.TYPE_47__** %32, align 8
  store i64 0, i64* %33, align 8
  %195 = load %struct.TYPE_53__*, %struct.TYPE_53__** %13, align 8
  %196 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_47__*, %struct.TYPE_47__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %197, i32 0, i32 3
  %199 = load %struct.TYPE_51__*, %struct.TYPE_51__** %198, align 8
  store %struct.TYPE_51__* %199, %struct.TYPE_51__** %9, align 8
  %200 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %201 = icmp eq %struct.TYPE_51__* %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %187
  br label %426

203:                                              ; preds = %187
  %204 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %204, i32 0, i32 3
  store %struct.TYPE_49__* %205, %struct.TYPE_49__** %11, align 8
  %206 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %34, i32 0, i32 0
  store i64 %208, i64* %209, align 8
  %210 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %211 = load %struct.TYPE_49__*, %struct.TYPE_49__** %11, align 8
  %212 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %211, i32 0, i32 0
  %213 = load i8*, i8** %212, align 8
  %214 = call i8* @dof_add_string(%struct.TYPE_42__* %210, i8* %213)
  %215 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %34, i32 0, i32 16
  store i8* %214, i8** %215, align 8
  %216 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %217 = load %struct.TYPE_49__*, %struct.TYPE_49__** %11, align 8
  %218 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %217, i32 0, i32 1
  %219 = load i8*, i8** %218, align 8
  %220 = call i8* @dof_add_string(%struct.TYPE_42__* %216, i8* %219)
  %221 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %34, i32 0, i32 15
  store i8* %220, i8** %221, align 8
  %222 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %223 = load %struct.TYPE_49__*, %struct.TYPE_49__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %223, i32 0, i32 2
  %225 = load i8*, i8** %224, align 8
  %226 = call i8* @dof_add_string(%struct.TYPE_42__* %222, i8* %225)
  %227 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %34, i32 0, i32 14
  store i8* %226, i8** %227, align 8
  %228 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %229 = load %struct.TYPE_49__*, %struct.TYPE_49__** %11, align 8
  %230 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %229, i32 0, i32 3
  %231 = load i8*, i8** %230, align 8
  %232 = call i8* @dof_add_string(%struct.TYPE_42__* %228, i8* %231)
  %233 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %34, i32 0, i32 13
  store i8* %232, i8** %233, align 8
  %234 = load %struct.TYPE_49__*, %struct.TYPE_49__** %11, align 8
  %235 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %34, i32 0, i32 12
  store i32 %236, i32* %237, align 8
  %238 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %239 = load i64, i64* @DOF_SECT_PROBEDESC, align 8
  %240 = call i8* @dof_add_lsect(%struct.TYPE_42__* %238, %struct.TYPE_44__* %34, i64 %239, i32 8, i32 0, i32 128, i32 128)
  store i8* %240, i8** %28, align 8
  %241 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = icmp ne i32* %244, null
  br i1 %245, label %246, label %253

246:                                              ; preds = %203
  %247 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %248 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = call i8* @dof_add_difo(%struct.TYPE_42__* %247, i32* %251)
  store i8* %252, i8** %29, align 8
  br label %253

253:                                              ; preds = %246, %203
  store i32 0, i32* %36, align 4
  %254 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %254, i32 0, i32 1
  %256 = load %struct.TYPE_52__*, %struct.TYPE_52__** %255, align 8
  store %struct.TYPE_52__* %256, %struct.TYPE_52__** %12, align 8
  br label %257

257:                                              ; preds = %393, %253
  %258 = load %struct.TYPE_52__*, %struct.TYPE_52__** %12, align 8
  %259 = icmp ne %struct.TYPE_52__* %258, null
  br i1 %259, label %260, label %399

260:                                              ; preds = %257
  %261 = load %struct.TYPE_52__*, %struct.TYPE_52__** %12, align 8
  %262 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %261, i32 0, i32 4
  %263 = load i32*, i32** %262, align 8
  %264 = icmp ne i32* %263, null
  br i1 %264, label %265, label %276

265:                                              ; preds = %260
  %266 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %267 = load %struct.TYPE_52__*, %struct.TYPE_52__** %12, align 8
  %268 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %267, i32 0, i32 4
  %269 = load i32*, i32** %268, align 8
  %270 = call i8* @dof_add_difo(%struct.TYPE_42__* %266, i32* %269)
  %271 = load %struct.TYPE_44__*, %struct.TYPE_44__** %18, align 8
  %272 = load i32, i32* %36, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %274, i32 0, i32 11
  store i8* %270, i8** %275, align 8
  br label %283

276:                                              ; preds = %260
  %277 = load i8*, i8** @DOF_SECIDX_NONE, align 8
  %278 = load %struct.TYPE_44__*, %struct.TYPE_44__** %18, align 8
  %279 = load i32, i32* %36, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %281, i32 0, i32 11
  store i8* %277, i8** %282, align 8
  br label %283

283:                                              ; preds = %276, %265
  %284 = load %struct.TYPE_47__*, %struct.TYPE_47__** %32, align 8
  %285 = icmp ne %struct.TYPE_47__* %284, null
  br i1 %285, label %286, label %334

286:                                              ; preds = %283
  %287 = load %struct.TYPE_52__*, %struct.TYPE_52__** %12, align 8
  %288 = load %struct.TYPE_47__*, %struct.TYPE_47__** %32, align 8
  %289 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %288, i32 0, i32 2
  %290 = load %struct.TYPE_52__*, %struct.TYPE_52__** %289, align 8
  %291 = icmp eq %struct.TYPE_52__* %287, %290
  br i1 %291, label %292, label %334

292:                                              ; preds = %286
  %293 = load %struct.TYPE_47__*, %struct.TYPE_47__** %32, align 8
  %294 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %293, i32 0, i32 1
  %295 = load i32*, i32** %294, align 8
  %296 = icmp ne i32* %295, null
  br i1 %296, label %297, label %310

297:                                              ; preds = %292
  %298 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %299 = load %struct.TYPE_47__*, %struct.TYPE_47__** %32, align 8
  %300 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %299, i32 0, i32 1
  %301 = load i32*, i32** %300, align 8
  %302 = load i8*, i8** %24, align 8
  %303 = load i32, i32* %15, align 4
  %304 = add nsw i32 %303, 1
  %305 = call i32 @dtrace_printf_format(%struct.TYPE_50__* %298, i32* %301, i8* %302, i32 %304)
  %306 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %307 = load i8*, i8** %24, align 8
  %308 = call i8* @dof_add_string(%struct.TYPE_42__* %306, i8* %307)
  %309 = ptrtoint i8* %308 to i64
  store i64 %309, i64* %33, align 8
  br label %324

310:                                              ; preds = %292
  %311 = load %struct.TYPE_47__*, %struct.TYPE_47__** %32, align 8
  %312 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %311, i32 0, i32 0
  %313 = load i8*, i8** %312, align 8
  %314 = icmp ne i8* %313, null
  br i1 %314, label %315, label %322

315:                                              ; preds = %310
  %316 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %317 = load %struct.TYPE_47__*, %struct.TYPE_47__** %32, align 8
  %318 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %317, i32 0, i32 0
  %319 = load i8*, i8** %318, align 8
  %320 = call i8* @dof_add_string(%struct.TYPE_42__* %316, i8* %319)
  %321 = ptrtoint i8* %320 to i64
  store i64 %321, i64* %33, align 8
  br label %323

322:                                              ; preds = %310
  store i64 0, i64* %33, align 8
  br label %323

323:                                              ; preds = %322, %315
  br label %324

324:                                              ; preds = %323, %297
  %325 = load %struct.TYPE_53__*, %struct.TYPE_53__** %31, align 8
  %326 = call %struct.TYPE_53__* @dt_list_next(%struct.TYPE_53__* %325)
  store %struct.TYPE_53__* %326, %struct.TYPE_53__** %31, align 8
  %327 = icmp ne %struct.TYPE_53__* %326, null
  br i1 %327, label %328, label %332

328:                                              ; preds = %324
  %329 = load %struct.TYPE_53__*, %struct.TYPE_53__** %31, align 8
  %330 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %329, i32 0, i32 1
  %331 = load %struct.TYPE_47__*, %struct.TYPE_47__** %330, align 8
  store %struct.TYPE_47__* %331, %struct.TYPE_47__** %32, align 8
  br label %333

332:                                              ; preds = %324
  store %struct.TYPE_47__* null, %struct.TYPE_47__** %32, align 8
  br label %333

333:                                              ; preds = %332, %328
  br label %334

334:                                              ; preds = %333, %286, %283
  %335 = load i64, i64* %33, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %352

337:                                              ; preds = %334
  %338 = load i64, i64* %33, align 8
  %339 = load %struct.TYPE_44__*, %struct.TYPE_44__** %18, align 8
  %340 = load i32, i32* %36, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %342, i32 0, i32 10
  store i64 %338, i64* %343, align 8
  %344 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %345 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = load %struct.TYPE_44__*, %struct.TYPE_44__** %18, align 8
  %348 = load i32, i32* %36, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %347, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %350, i32 0, i32 1
  store i64 %346, i64* %351, align 8
  br label %368

352:                                              ; preds = %334
  %353 = load %struct.TYPE_52__*, %struct.TYPE_52__** %12, align 8
  %354 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %353, i32 0, i32 3
  %355 = load i64, i64* %354, align 8
  %356 = load %struct.TYPE_44__*, %struct.TYPE_44__** %18, align 8
  %357 = load i32, i32* %36, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %356, i64 %358
  %360 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %359, i32 0, i32 10
  store i64 %355, i64* %360, align 8
  %361 = load i8*, i8** @DOF_SECIDX_NONE, align 8
  %362 = ptrtoint i8* %361 to i64
  %363 = load %struct.TYPE_44__*, %struct.TYPE_44__** %18, align 8
  %364 = load i32, i32* %36, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %363, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %366, i32 0, i32 1
  store i64 %362, i64* %367, align 8
  br label %368

368:                                              ; preds = %352, %337
  %369 = load %struct.TYPE_52__*, %struct.TYPE_52__** %12, align 8
  %370 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 8
  %372 = load %struct.TYPE_44__*, %struct.TYPE_44__** %18, align 8
  %373 = load i32, i32* %36, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %372, i64 %374
  %376 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %375, i32 0, i32 9
  store i32 %371, i32* %376, align 8
  %377 = load %struct.TYPE_52__*, %struct.TYPE_52__** %12, align 8
  %378 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = load %struct.TYPE_44__*, %struct.TYPE_44__** %18, align 8
  %381 = load i32, i32* %36, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %380, i64 %382
  %384 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %383, i32 0, i32 8
  store i32 %379, i32* %384, align 4
  %385 = load %struct.TYPE_52__*, %struct.TYPE_52__** %12, align 8
  %386 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = load %struct.TYPE_44__*, %struct.TYPE_44__** %18, align 8
  %389 = load i32, i32* %36, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %388, i64 %390
  %392 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %391, i32 0, i32 7
  store i32 %387, i32* %392, align 8
  br label %393

393:                                              ; preds = %368
  %394 = load %struct.TYPE_52__*, %struct.TYPE_52__** %12, align 8
  %395 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %394, i32 0, i32 5
  %396 = load %struct.TYPE_52__*, %struct.TYPE_52__** %395, align 8
  store %struct.TYPE_52__* %396, %struct.TYPE_52__** %12, align 8
  %397 = load i32, i32* %36, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %36, align 4
  br label %257

399:                                              ; preds = %257
  %400 = load i32, i32* %36, align 4
  %401 = icmp sgt i32 %400, 0
  br i1 %401, label %402, label %411

402:                                              ; preds = %399
  %403 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %404 = load %struct.TYPE_44__*, %struct.TYPE_44__** %18, align 8
  %405 = load i64, i64* @DOF_SECT_ACTDESC, align 8
  %406 = load i32, i32* %36, align 4
  %407 = sext i32 %406 to i64
  %408 = mul i64 128, %407
  %409 = trunc i64 %408 to i32
  %410 = call i8* @dof_add_lsect(%struct.TYPE_42__* %403, %struct.TYPE_44__* %404, i64 %405, i32 4, i32 0, i32 128, i32 %409)
  store i8* %410, i8** %30, align 8
  br label %411

411:                                              ; preds = %402, %399
  %412 = load i8*, i8** %28, align 8
  %413 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %35, i32 0, i32 6
  store i8* %412, i8** %413, align 8
  %414 = load i8*, i8** %29, align 8
  %415 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %35, i32 0, i32 5
  store i8* %414, i8** %415, align 8
  %416 = load i8*, i8** %30, align 8
  %417 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %35, i32 0, i32 4
  store i8* %416, i8** %417, align 8
  %418 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %35, i32 0, i32 3
  store i64 0, i64* %418, align 8
  %419 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %420 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %35, i32 0, i32 2
  store i32 %421, i32* %422, align 8
  %423 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %424 = load i64, i64* @DOF_SECT_ECBDESC, align 8
  %425 = call i8* @dof_add_lsect(%struct.TYPE_42__* %423, %struct.TYPE_44__* %35, i64 %424, i32 4, i32 0, i32 0, i32 128)
  br label %426

426:                                              ; preds = %411, %202
  %427 = load %struct.TYPE_53__*, %struct.TYPE_53__** %13, align 8
  %428 = call %struct.TYPE_53__* @dt_list_next(%struct.TYPE_53__* %427)
  store %struct.TYPE_53__* %428, %struct.TYPE_53__** %13, align 8
  %429 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  store %struct.TYPE_51__* %429, %struct.TYPE_51__** %10, align 8
  br label %184

430:                                              ; preds = %184
  %431 = load i32, i32* %7, align 4
  %432 = load i32, i32* @DTRACE_D_PROBES, align 4
  %433 = and i32 %431, %432
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %453

435:                                              ; preds = %430
  %436 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %437 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %436, i32 0, i32 2
  %438 = call %struct.TYPE_53__* @dt_list_next(%struct.TYPE_53__* %437)
  store %struct.TYPE_53__* %438, %struct.TYPE_53__** %16, align 8
  br label %439

439:                                              ; preds = %449, %435
  %440 = load %struct.TYPE_53__*, %struct.TYPE_53__** %16, align 8
  %441 = icmp ne %struct.TYPE_53__* %440, null
  br i1 %441, label %442, label %452

442:                                              ; preds = %439
  %443 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %444 = load %struct.TYPE_53__*, %struct.TYPE_53__** %16, align 8
  %445 = call i64 @dof_add_provider(%struct.TYPE_42__* %443, %struct.TYPE_53__* %444)
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %447, label %448

447:                                              ; preds = %442
  store i8* null, i8** %4, align 8
  br label %627

448:                                              ; preds = %442
  br label %449

449:                                              ; preds = %448
  %450 = load %struct.TYPE_53__*, %struct.TYPE_53__** %16, align 8
  %451 = call %struct.TYPE_53__* @dt_list_next(%struct.TYPE_53__* %450)
  store %struct.TYPE_53__* %451, %struct.TYPE_53__** %16, align 8
  br label %439

452:                                              ; preds = %439
  br label %453

453:                                              ; preds = %452, %430
  %454 = load i32, i32* %7, align 4
  %455 = load i32, i32* @DTRACE_D_STRIP, align 4
  %456 = and i32 %454, %455
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %471, label %458

458:                                              ; preds = %453
  %459 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %460 = load i32*, i32** @_dtrace_version, align 8
  %461 = load i32, i32* @DOF_SECT_COMMENTS, align 4
  %462 = load i32*, i32** @_dtrace_version, align 8
  %463 = call i32 @strlen(i32* %462)
  %464 = add nsw i32 %463, 1
  %465 = call i32 @dof_add_usect(%struct.TYPE_42__* %459, i32* %460, i32 %461, i32 1, i32 0, i32 0, i32 %464)
  %466 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %467 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %468 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %467, i32 0, i32 1
  %469 = load i32, i32* @DOF_SECT_UTSNAME, align 4
  %470 = call i32 @dof_add_usect(%struct.TYPE_42__* %466, i32* %468, i32 %469, i32 1, i32 0, i32 0, i32 4)
  br label %471

471:                                              ; preds = %458, %453
  %472 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %473 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %472, i32 0, i32 1
  %474 = load i32, i32* %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %22, i32 0, i32 0
  store i32 %474, i32* %475, align 8
  %476 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %477 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %476, i32 0, i32 5
  %478 = call i64 @dt_buf_len(i32* %477)
  %479 = add i64 24, %478
  store i64 %479, i64* %20, align 8
  %480 = load i64, i64* %20, align 8
  %481 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %482 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %481, i32 0, i32 4
  %483 = call i64 @dt_buf_len(i32* %482)
  %484 = add i64 %480, %483
  %485 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %486 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %485, i32 0, i32 3
  %487 = call i64 @dt_buf_len(i32* %486)
  %488 = add i64 %484, %487
  %489 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %22, i32 0, i32 1
  store i64 %488, i64* %489, align 8
  %490 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %491 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %490, i32 0, i32 2
  %492 = call i64 @dt_buf_len(i32* %491)
  %493 = icmp ne i64 %492, 0
  br i1 %493, label %494, label %504

494:                                              ; preds = %471
  %495 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %22, i32 0, i32 1
  %496 = load i64, i64* %495, align 8
  %497 = call i64 @roundup(i64 %496, i32 4)
  store i64 %497, i64* %21, align 8
  %498 = load i64, i64* %21, align 8
  %499 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %500 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %499, i32 0, i32 2
  %501 = call i64 @dt_buf_len(i32* %500)
  %502 = add i64 %498, %501
  %503 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %22, i32 0, i32 2
  store i64 %502, i64* %503, align 8
  br label %509

504:                                              ; preds = %471
  %505 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %22, i32 0, i32 1
  %506 = load i64, i64* %505, align 8
  store i64 %506, i64* %21, align 8
  %507 = load i64, i64* %21, align 8
  %508 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %22, i32 0, i32 2
  store i64 %507, i64* %508, align 8
  br label %509

509:                                              ; preds = %504, %494
  %510 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %511 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %510, i32 0, i32 5
  %512 = call i32 @dt_buf_error(i32* %511)
  store i32 %512, i32* %25, align 4
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %518

514:                                              ; preds = %509
  %515 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %516 = load i32, i32* %25, align 4
  %517 = call i32 @dt_set_errno(%struct.TYPE_50__* %515, i32 %516)
  store i8* null, i8** %4, align 8
  br label %627

518:                                              ; preds = %509
  %519 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %520 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %519, i32 0, i32 5
  %521 = call %struct.TYPE_43__* @dt_buf_ptr(i32* %520)
  store %struct.TYPE_43__* %521, %struct.TYPE_43__** %19, align 8
  %522 = load %struct.TYPE_43__*, %struct.TYPE_43__** %19, align 8
  %523 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %524 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %523, i32 0, i32 0
  %525 = load i64, i64* %524, align 8
  %526 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %522, i64 %525
  %527 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %526, i32 0, i32 0
  %528 = load i64, i64* %527, align 8
  %529 = load i64, i64* @DOF_SECT_STRTAB, align 8
  %530 = icmp eq i64 %528, %529
  %531 = zext i1 %530 to i32
  %532 = call i32 @assert(i32 %531)
  %533 = load i64, i64* %20, align 8
  %534 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %535 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %534, i32 0, i32 1
  %536 = load i32, i32* %535, align 8
  %537 = sext i32 %536 to i64
  %538 = mul i64 32, %537
  %539 = add i64 24, %538
  %540 = icmp eq i64 %533, %539
  %541 = zext i1 %540 to i32
  %542 = call i32 @assert(i32 %541)
  %543 = load i64, i64* %20, align 8
  %544 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %545 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %544, i32 0, i32 4
  %546 = call i64 @dt_buf_len(i32* %545)
  %547 = add i64 %543, %546
  %548 = load %struct.TYPE_43__*, %struct.TYPE_43__** %19, align 8
  %549 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %550 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %549, i32 0, i32 0
  %551 = load i64, i64* %550, align 8
  %552 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %548, i64 %551
  %553 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %552, i32 0, i32 1
  store i64 %547, i64* %553, align 8
  %554 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %555 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %554, i32 0, i32 3
  %556 = call i64 @dt_buf_len(i32* %555)
  %557 = load %struct.TYPE_43__*, %struct.TYPE_43__** %19, align 8
  %558 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %559 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %558, i32 0, i32 0
  %560 = load i64, i64* %559, align 8
  %561 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %557, i64 %560
  %562 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %561, i32 0, i32 2
  store i64 %556, i64* %562, align 8
  store i32 0, i32* %25, align 4
  br label %563

563:                                              ; preds = %597, %518
  %564 = load i32, i32* %25, align 4
  %565 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %566 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %565, i32 0, i32 1
  %567 = load i32, i32* %566, align 8
  %568 = icmp slt i32 %564, %567
  br i1 %568, label %569, label %602

569:                                              ; preds = %563
  %570 = load i32, i32* %25, align 4
  %571 = sext i32 %570 to i64
  %572 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %573 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %572, i32 0, i32 0
  %574 = load i64, i64* %573, align 8
  %575 = icmp eq i64 %571, %574
  br i1 %575, label %576, label %577

576:                                              ; preds = %569
  br label %597

577:                                              ; preds = %569
  %578 = load %struct.TYPE_43__*, %struct.TYPE_43__** %19, align 8
  %579 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %578, i32 0, i32 3
  %580 = load i32, i32* %579, align 8
  %581 = load i32, i32* @DOF_SECF_LOAD, align 4
  %582 = and i32 %580, %581
  %583 = icmp ne i32 %582, 0
  br i1 %583, label %584, label %590

584:                                              ; preds = %577
  %585 = load i64, i64* %20, align 8
  %586 = load %struct.TYPE_43__*, %struct.TYPE_43__** %19, align 8
  %587 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %586, i32 0, i32 1
  %588 = load i64, i64* %587, align 8
  %589 = add i64 %588, %585
  store i64 %589, i64* %587, align 8
  br label %596

590:                                              ; preds = %577
  %591 = load i64, i64* %21, align 8
  %592 = load %struct.TYPE_43__*, %struct.TYPE_43__** %19, align 8
  %593 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %592, i32 0, i32 1
  %594 = load i64, i64* %593, align 8
  %595 = add i64 %594, %591
  store i64 %595, i64* %593, align 8
  br label %596

596:                                              ; preds = %590, %584
  br label %597

597:                                              ; preds = %596, %576
  %598 = load i32, i32* %25, align 4
  %599 = add nsw i32 %598, 1
  store i32 %599, i32* %25, align 4
  %600 = load %struct.TYPE_43__*, %struct.TYPE_43__** %19, align 8
  %601 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %600, i32 1
  store %struct.TYPE_43__* %601, %struct.TYPE_43__** %19, align 8
  br label %563

602:                                              ; preds = %563
  %603 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %604 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %22, i32 0, i32 2
  %605 = load i64, i64* %604, align 8
  %606 = call i32 @dt_buf_create(%struct.TYPE_50__* %603, i32* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %605)
  %607 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %608 = call i32 @dt_buf_write(%struct.TYPE_50__* %607, i32* %23, %struct.TYPE_45__* %22, i32 24, i32 4)
  %609 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %610 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %611 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %610, i32 0, i32 5
  %612 = call i32 @dt_buf_concat(%struct.TYPE_50__* %609, i32* %23, i32* %611, i32 4)
  %613 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %614 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %615 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %614, i32 0, i32 4
  %616 = call i32 @dt_buf_concat(%struct.TYPE_50__* %613, i32* %23, i32* %615, i32 4)
  %617 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %618 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %619 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %618, i32 0, i32 3
  %620 = call i32 @dt_buf_concat(%struct.TYPE_50__* %617, i32* %23, i32* %619, i32 1)
  %621 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %622 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %623 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %622, i32 0, i32 2
  %624 = call i32 @dt_buf_concat(%struct.TYPE_50__* %621, i32* %23, i32* %623, i32 4)
  %625 = load %struct.TYPE_50__*, %struct.TYPE_50__** %5, align 8
  %626 = call i8* @dt_buf_claim(%struct.TYPE_50__* %625, i32* %23)
  store i8* %626, i8** %4, align 8
  br label %627

627:                                              ; preds = %602, %514, %447, %66, %60, %44
  %628 = load i8*, i8** %4, align 8
  ret i8* %628
}

declare dso_local i32 @dt_set_errno(%struct.TYPE_50__*, i32) #1

declare dso_local i64 @dof_hdr(%struct.TYPE_50__*, i32, %struct.TYPE_45__*) #1

declare dso_local i64 @dt_dof_reset(%struct.TYPE_50__*, %struct.TYPE_48__*) #1

declare dso_local %struct.TYPE_53__* @dt_list_next(%struct.TYPE_53__*) #1

declare dso_local i32 @dtrace_printf_format(%struct.TYPE_50__*, i32*, i8*, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i8* @dof_add_lsect(%struct.TYPE_42__*, %struct.TYPE_44__*, i64, i32, i32, i32, i32) #1

declare dso_local i8* @dof_add_string(%struct.TYPE_42__*, i8*) #1

declare dso_local i32 @dof_add_translator(%struct.TYPE_42__*, %struct.TYPE_53__*, i32) #1

declare dso_local i8* @dof_add_difo(%struct.TYPE_42__*, i32*) #1

declare dso_local i64 @dof_add_provider(%struct.TYPE_42__*, %struct.TYPE_53__*) #1

declare dso_local i32 @dof_add_usect(%struct.TYPE_42__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i64 @dt_buf_len(i32*) #1

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i32 @dt_buf_error(i32*) #1

declare dso_local %struct.TYPE_43__* @dt_buf_ptr(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dt_buf_create(%struct.TYPE_50__*, i32*, i8*, i64) #1

declare dso_local i32 @dt_buf_write(%struct.TYPE_50__*, i32*, %struct.TYPE_45__*, i32, i32) #1

declare dso_local i32 @dt_buf_concat(%struct.TYPE_50__*, i32*, i32*, i32) #1

declare dso_local i8* @dt_buf_claim(%struct.TYPE_50__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
